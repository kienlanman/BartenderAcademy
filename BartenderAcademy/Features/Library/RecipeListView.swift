import SwiftUI

struct RecipeListView: View {
    let progress: UserProgress

    @State private var searchText = ""
    @State private var selectedSpirit: BaseSpirit?
    @State private var selectedCategory: IBACategory?
    @State private var favoritesOnly = false

    private var filtered: [Cocktail] {
        CocktailData.all.filter { cocktail in
            let matchesSearch = searchText.isEmpty || cocktail.name.localizedCaseInsensitiveContains(searchText)
            let matchesSpirit = selectedSpirit == nil || cocktail.baseSpirit == selectedSpirit
            let matchesCategory = selectedCategory == nil || cocktail.category == selectedCategory
            let matchesFavorites = !favoritesOnly || progress.favoriteRecipeIDs.contains(cocktail.id)
            return matchesSearch && matchesSpirit && matchesCategory && matchesFavorites
        }
    }

    var body: some View {
        NavigationStack {
            List {
                filterBar
                ForEach(filtered) { cocktail in
                    NavigationLink {
                        RecipeDetailView(cocktail: cocktail, progress: progress)
                    } label: {
                        recipeRow(cocktail)
                    }
                }
                if filtered.isEmpty {
                    EmptyStateView(icon: "wineglass", title: "No recipes found", message: "Try clearing filters or search terms.")
                        .listRowSeparator(.hidden)
                }
            }
            .listStyle(.plain)
            .searchable(text: $searchText, prompt: "Search cocktails")
            .navigationTitle("Library")
        }
    }

    private var filterBar: some View {
        VStack(alignment: .leading, spacing: 10) {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    filterChip(title: "Favorites", isSelected: favoritesOnly) {
                        favoritesOnly.toggle()
                    }
                    ForEach(IBACategory.allCases) { category in
                        filterChip(title: category.rawValue, isSelected: selectedCategory == category) {
                            selectedCategory = selectedCategory == category ? nil : category
                        }
                    }
                }
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(BaseSpirit.allCases) { spirit in
                        filterChip(title: spirit.displayName, isSelected: selectedSpirit == spirit, color: spirit.color) {
                            selectedSpirit = selectedSpirit == spirit ? nil : spirit
                        }
                    }
                }
            }
        }
        .listRowSeparator(.hidden)
        .listRowInsets(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
    }

    private func filterChip(title: String, isSelected: Bool, color: Color = .orange, action: @escaping () -> Void) -> some View {
        Button(action: action) {
            Text(title)
                .font(.caption.weight(.medium))
                .padding(.horizontal, 12)
                .padding(.vertical, 6)
                .background(isSelected ? color.opacity(0.9) : color.opacity(0.12), in: Capsule())
                .foregroundStyle(isSelected ? .white : color)
        }
        .buttonStyle(.plain)
    }

    private func recipeRow(_ cocktail: Cocktail) -> some View {
        HStack(spacing: 12) {
            IconBadge(systemImage: cocktail.baseSpirit.icon, color: cocktail.baseSpirit.color)
            VStack(alignment: .leading, spacing: 4) {
                Text(cocktail.name).font(.subheadline.weight(.semibold))
                HStack(spacing: 6) {
                    PillTag(text: cocktail.baseSpirit.displayName, color: cocktail.baseSpirit.color)
                    PillTag(text: cocktail.technique.rawValue)
                }
            }
            Spacer()
            if progress.favoriteRecipeIDs.contains(cocktail.id) {
                Image(systemName: "heart.fill").foregroundStyle(.pink)
            }
        }
        .padding(.vertical, 4)
    }
}
