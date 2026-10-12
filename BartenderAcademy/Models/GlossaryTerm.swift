import Foundation

struct GlossaryTerm: Codable, Hashable, Identifiable {
    var id: String { term }
    let term: String
    let definition: String
}
