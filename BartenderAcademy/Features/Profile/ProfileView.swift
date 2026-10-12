import SwiftUI

struct ProfileView: View {
    let progress: UserProgress

    private var totalLessons: Int { CurriculumData.allLessons.count }
    private var completedCount: Int { progress.completedLessonIDs.count }
    private var favoriteCount: Int { progress.favoriteRecipeIDs.count }

    var body: some View {
        NavigationStack {
            List {
                Section {
                    HStack {
                        Spacer()
                        VStack(spacing: 8) {
                            ProgressRing(progress: totalLessons == 0 ? 0 : Double(completedCount) / Double(totalLessons), size: 90)
                            Text("\(progress.totalXP) XP earned").font(.subheadline.weight(.semibold))
                        }
                        Spacer()
                    }
                    .padding(.vertical, 8)
                }

                Section("Stats") {
                    statRow(icon: "book.fill", title: "Lessons Completed", value: "\(completedCount)/\(totalLessons)")
                    statRow(icon: "flame.fill", title: "Current Streak", value: "\(progress.currentStreak) days")
                    statRow(icon: "heart.fill", title: "Favorite Recipes", value: "\(favoriteCount)")
                    if let bestScore = progress.quizScores["practice-mixed"] {
                        statRow(icon: "star.fill", title: "Best Mixed Quiz Score", value: "\(bestScore)%")
                    }
                }

                Section("Reference") {
                    NavigationLink {
                        GlossaryView()
                    } label: {
                        Label("Bar Glossary", systemImage: "text.book.closed.fill")
                    }
                }

                if favoriteCount > 0 {
                    Section("Favorite Recipes") {
                        ForEach(CocktailData.all.filter { progress.favoriteRecipeIDs.contains($0.id) }) { cocktail in
                            NavigationLink {
                                RecipeDetailView(cocktail: cocktail, progress: progress)
                            } label: {
                                Label(cocktail.name, systemImage: cocktail.baseSpirit.icon)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Profile")
        }
    }

    private func statRow(icon: String, title: String, value: String) -> some View {
        HStack {
            Label(title, systemImage: icon)
            Spacer()
            Text(value).foregroundStyle(.secondary)
        }
    }
}
