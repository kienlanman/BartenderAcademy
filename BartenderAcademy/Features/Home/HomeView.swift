import SwiftUI

struct HomeView: View {
    let progress: UserProgress

    private var totalLessons: Int { CurriculumData.allLessons.count }
    private var completedCount: Int { progress.completedLessonIDs.count }
    private var overallProgress: Double {
        totalLessons == 0 ? 0 : Double(completedCount) / Double(totalLessons)
    }

    private var nextLesson: Lesson? {
        CurriculumData.allLessons.first { !progress.completedLessonIDs.contains($0.id) }
    }

    private var favoriteRecipes: [Cocktail] {
        CocktailData.all.filter { progress.favoriteRecipeIDs.contains($0.id) }
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    header
                    statsRow
                    if let nextLesson {
                        continueCard(lesson: nextLesson)
                    }
                    quickLinksRow
                    if !favoriteRecipes.isEmpty {
                        favoritesSection
                    }
                }
                .padding()
            }
            .navigationTitle("Bartender Academy")
        }
    }

    private var header: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("Welcome back 🍸").font(.title.bold())
            Text("Let's keep building your bar skills.")
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }

    private var statsRow: some View {
        HStack(spacing: 16) {
            ProgressRing(progress: overallProgress)
            VStack(alignment: .leading, spacing: 8) {
                Label("\(completedCount)/\(totalLessons) lessons complete", systemImage: "book.fill")
                    .font(.subheadline)
                Label("\(progress.currentStreak)-day streak", systemImage: "flame.fill")
                    .font(.subheadline)
                Label("\(progress.totalXP) XP", systemImage: "star.fill")
                    .font(.subheadline)
            }
            Spacer()
        }
        .padding()
        .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 16))
    }

    private func continueCard(lesson: Lesson) -> some View {
        NavigationLink(value: lesson) {
            HStack {
                IconBadge(systemImage: "play.fill", color: .orange)
                VStack(alignment: .leading, spacing: 4) {
                    Text("Continue Learning").font(.caption).foregroundStyle(.secondary)
                    Text(lesson.title).font(.headline)
                    Text("\(lesson.estimatedMinutes) min lesson").font(.caption).foregroundStyle(.secondary)
                }
                Spacer()
                Image(systemName: "chevron.right").foregroundStyle(.secondary)
            }
            .padding()
            .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 16))
        }
        .buttonStyle(.plain)
        .navigationDestination(for: Lesson.self) { lesson in
            LessonDetailView(lesson: lesson, progress: progress)
        }
    }

    private var quickLinksRow: some View {
        HStack(spacing: 12) {
            NavigationLink {
                QuizModeView(progress: progress)
            } label: {
                quickLink(icon: "questionmark.circle.fill", title: "Quiz Mode", color: .purple)
            }
            NavigationLink {
                FlashcardDeckView(progress: progress, initialCategory: nil)
            } label: {
                quickLink(icon: "rectangle.stack.fill", title: "Flashcards", color: .blue)
            }
        }
    }

    private func quickLink(icon: String, title: String, color: Color) -> some View {
        VStack(spacing: 8) {
            IconBadge(systemImage: icon, color: color)
            Text(title).font(.caption.weight(.medium)).foregroundStyle(.primary)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 12)
        .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 16))
    }

    private var favoritesSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            SectionHeaderView(title: "Your Favorites")
            ForEach(favoriteRecipes.prefix(3)) { cocktail in
                NavigationLink {
                    RecipeDetailView(cocktail: cocktail, progress: progress)
                } label: {
                    HStack {
                        IconBadge(systemImage: cocktail.baseSpirit.icon, color: cocktail.baseSpirit.color, size: 36)
                        Text(cocktail.name).font(.subheadline.weight(.medium))
                        Spacer()
                        Image(systemName: "chevron.right").font(.caption).foregroundStyle(.secondary)
                    }
                    .padding(10)
                    .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 12))
                }
                .buttonStyle(.plain)
            }
        }
    }
}
