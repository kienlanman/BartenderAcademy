import Foundation
import SwiftData

@Model
final class UserProgress {
    var completedLessonIDs: [String] = []
    var favoriteRecipeIDs: [String] = []
    var quizScoresJSON: String = "{}"
    var flashcardBoxesJSON: String = "{}"
    var currentStreak: Int = 0
    var lastStudyDate: Date?
    var totalXP: Int = 0

    init() {}

    var quizScores: [String: Int] {
        get { (try? JSONDecoder().decode([String: Int].self, from: Data(quizScoresJSON.utf8))) ?? [:] }
        set { quizScoresJSON = (try? String(data: JSONEncoder().encode(newValue), encoding: .utf8)) ?? "{}" }
    }

    var flashcardBoxes: [String: Int] {
        get { (try? JSONDecoder().decode([String: Int].self, from: Data(flashcardBoxesJSON.utf8))) ?? [:] }
        set { flashcardBoxesJSON = (try? String(data: JSONEncoder().encode(newValue), encoding: .utf8)) ?? "{}" }
    }

    func recordStudyToday() {
        let calendar = Calendar.current
        let today = calendar.startOfDay(for: Date())
        if let last = lastStudyDate {
            let lastDay = calendar.startOfDay(for: last)
            let daysBetween = calendar.dateComponents([.day], from: lastDay, to: today).day ?? 0
            if daysBetween == 1 {
                currentStreak += 1
            } else if daysBetween > 1 {
                currentStreak = 1
            }
        } else {
            currentStreak = 1
        }
        lastStudyDate = today
    }

    func toggleFavorite(_ recipeID: String) {
        if let idx = favoriteRecipeIDs.firstIndex(of: recipeID) {
            favoriteRecipeIDs.remove(at: idx)
        } else {
            favoriteRecipeIDs.append(recipeID)
        }
    }

    func markLessonComplete(_ lessonID: String) {
        if !completedLessonIDs.contains(lessonID) {
            completedLessonIDs.append(lessonID)
            totalXP += 20
        }
        recordStudyToday()
    }

    func recordQuizScore(quizID: String, percent: Int) {
        var scores = quizScores
        let best = scores[quizID] ?? 0
        if percent > best {
            scores[quizID] = percent
            quizScores = scores
        }
        totalXP += percent / 10
        recordStudyToday()
    }

    func setFlashcardBox(_ cardID: String, box: Int) {
        var boxes = flashcardBoxes
        boxes[cardID] = max(0, min(box, 4))
        flashcardBoxes = boxes
        recordStudyToday()
    }
}
