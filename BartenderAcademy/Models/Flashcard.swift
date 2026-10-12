import Foundation

enum FlashcardCategory: String, Codable, CaseIterable, Identifiable {
    case recipe = "Recipes"
    case technique = "Techniques"
    case term = "Terminology"
    case spirit = "Spirits"

    var id: String { rawValue }

    var icon: String {
        switch self {
        case .recipe: return "wineglass.fill"
        case .technique: return "hand.raised.fill"
        case .term: return "text.book.closed.fill"
        case .spirit: return "flame.fill"
        }
    }
}

struct Flashcard: Codable, Hashable, Identifiable {
    let id: String
    let front: String
    let back: String
    let category: FlashcardCategory
}
