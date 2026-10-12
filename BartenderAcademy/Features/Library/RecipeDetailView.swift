import SwiftUI

struct RecipeDetailView: View {
    let cocktail: Cocktail
    let progress: UserProgress

    private var isFavorite: Bool { progress.favoriteRecipeIDs.contains(cocktail.id) }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 18) {
                header
                tagsRow
                sectionCard(title: "Ingredients", icon: "list.bullet") {
                    ForEach(cocktail.ingredients, id: \.name) { ingredient in
                        HStack {
                            Text(ingredient.amount).font(.subheadline.weight(.semibold)).frame(width: 90, alignment: .leading)
                            Text(ingredient.name).font(.subheadline)
                        }
                    }
                }
                sectionCard(title: "Method", icon: "hand.point.up.left.fill") {
                    ForEach(Array(cocktail.method.enumerated()), id: \.offset) { idx, step in
                        HStack(alignment: .top, spacing: 8) {
                            Text("\(idx + 1).").font(.subheadline.weight(.bold)).foregroundStyle(.orange)
                            Text(step).font(.subheadline)
                        }
                    }
                }
                sectionCard(title: "Glassware & Garnish", icon: "wineglass") {
                    Text(cocktail.glassware).font(.subheadline)
                    Text(cocktail.garnish).font(.subheadline).foregroundStyle(.secondary)
                }
                sectionCard(title: "Flavor Notes", icon: "sparkles") {
                    Text(cocktail.flavorNotes).font(.subheadline)
                }
                sectionCard(title: "History", icon: "clock.arrow.circlepath") {
                    Text(cocktail.history).font(.subheadline)
                }
            }
            .padding()
        }
        .navigationTitle(cocktail.name)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    progress.toggleFavorite(cocktail.id)
                } label: {
                    Image(systemName: isFavorite ? "heart.fill" : "heart")
                        .foregroundStyle(.pink)
                }
            }
        }
    }

    private var header: some View {
        HStack(spacing: 16) {
            IconBadge(systemImage: cocktail.baseSpirit.icon, color: cocktail.baseSpirit.color, size: 60)
            VStack(alignment: .leading, spacing: 4) {
                Text(cocktail.name).font(.title2.bold())
                Text(cocktail.category.rawValue).font(.caption).foregroundStyle(.secondary)
            }
            Spacer()
        }
    }

    private var tagsRow: some View {
        HStack(spacing: 8) {
            PillTag(text: cocktail.baseSpirit.displayName, color: cocktail.baseSpirit.color)
            PillTag(text: cocktail.technique.rawValue, color: .blue)
            PillTag(text: cocktail.difficulty.rawValue, color: difficultyColor)
        }
    }

    private var difficultyColor: Color {
        switch cocktail.difficulty {
        case .easy: return .green
        case .medium: return .orange
        case .hard: return .red
        }
    }

    @ViewBuilder
    private func sectionCard<Content: View>(title: String, icon: String, @ViewBuilder content: () -> Content) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            Label(title, systemImage: icon).font(.headline)
            VStack(alignment: .leading, spacing: 6) {
                content()
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 14))
    }
}
