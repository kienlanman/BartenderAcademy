import SwiftUI

struct PracticeHomeView: View {
    let progress: UserProgress

    var body: some View {
        NavigationStack {
            List {
                Section("Quiz Mode") {
                    NavigationLink {
                        QuizModeView(progress: progress)
                    } label: {
                        HStack {
                            IconBadge(systemImage: "questionmark.circle.fill", color: .purple, size: 36)
                            VStack(alignment: .leading) {
                                Text("Mixed Practice Quiz").font(.subheadline.weight(.semibold))
                                Text("10 random questions from every module").font(.caption).foregroundStyle(.secondary)
                            }
                        }
                    }
                }
                Section("Flashcard Decks") {
                    NavigationLink {
                        FlashcardDeckView(progress: progress, initialCategory: nil)
                    } label: {
                        deckRow(title: "All Cards", icon: "square.stack.3d.up.fill", color: .orange, count: FlashcardData.all.count)
                    }
                    ForEach(FlashcardCategory.allCases) { category in
                        NavigationLink {
                            FlashcardDeckView(progress: progress, initialCategory: category)
                        } label: {
                            deckRow(title: category.rawValue, icon: category.icon, color: .blue, count: FlashcardData.all.filter { $0.category == category }.count)
                        }
                    }
                }
            }
            .navigationTitle("Practice")
        }
    }

    private func deckRow(title: String, icon: String, color: Color, count: Int) -> some View {
        HStack {
            IconBadge(systemImage: icon, color: color, size: 36)
            VStack(alignment: .leading) {
                Text(title).font(.subheadline.weight(.semibold))
                Text("\(count) cards").font(.caption).foregroundStyle(.secondary)
            }
        }
    }
}
