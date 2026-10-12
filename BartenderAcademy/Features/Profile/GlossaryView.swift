import SwiftUI

struct GlossaryView: View {
    @State private var searchText = ""

    private var filtered: [GlossaryTerm] {
        searchText.isEmpty ? GlossaryData.terms : GlossaryData.terms.filter { $0.term.localizedCaseInsensitiveContains(searchText) }
    }

    var body: some View {
        List(filtered) { term in
            VStack(alignment: .leading, spacing: 4) {
                Text(term.term).font(.subheadline.weight(.semibold))
                Text(term.definition).font(.caption).foregroundStyle(.secondary)
            }
            .padding(.vertical, 2)
        }
        .searchable(text: $searchText, prompt: "Search terms")
        .navigationTitle("Bar Glossary")
        .navigationBarTitleDisplayMode(.inline)
    }
}
