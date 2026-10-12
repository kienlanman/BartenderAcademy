import SwiftUI

enum BaseSpirit: String, CaseIterable, Codable, Identifiable {
    case gin, vodka, rum, tequila, whiskey, brandy
    case liqueur = "Liqueur / Other"

    var id: String { rawValue }

    var displayName: String {
        switch self {
        case .gin: return "Gin"
        case .vodka: return "Vodka"
        case .rum: return "Rum"
        case .tequila: return "Tequila"
        case .whiskey: return "Whiskey"
        case .brandy: return "Brandy"
        case .liqueur: return "Liqueur / Other"
        }
    }

    var color: Color {
        switch self {
        case .gin: return .teal
        case .vodka: return .cyan
        case .rum: return .orange
        case .tequila: return .yellow
        case .whiskey: return .brown
        case .brandy: return .pink
        case .liqueur: return .purple
        }
    }

    var icon: String {
        switch self {
        case .gin: return "leaf.fill"
        case .vodka: return "snowflake"
        case .rum: return "sun.max.fill"
        case .tequila: return "sparkles"
        case .whiskey: return "flame.fill"
        case .brandy: return "grapes.fill" // fallback if unavailable in SF Symbols
        case .liqueur: return "drop.fill"
        }
    }
}

enum IBACategory: String, CaseIterable, Codable, Identifiable {
    case unforgettables = "The Unforgettables"
    case newEra = "New Era Classics"
    case contemporary = "Contemporary Classics"

    var id: String { rawValue }
}

enum Technique: String, CaseIterable, Codable, Identifiable {
    case shaken = "Shaken"
    case stirred = "Stirred"
    case built = "Built"
    case muddled = "Muddled"
    case blended = "Blended"

    var id: String { rawValue }

    var icon: String {
        switch self {
        case .shaken: return "shuffle"
        case .stirred: return "circle.dotted"
        case .built: return "square.stack.3d.up"
        case .muddled: return "hammer.fill"
        case .blended: return "wind"
        }
    }
}

enum Difficulty: String, Codable, CaseIterable, Identifiable {
    case easy = "Easy", medium = "Medium", hard = "Hard"
    var id: String { rawValue }
}

struct Ingredient: Codable, Hashable {
    let name: String
    let amount: String
}

struct Cocktail: Identifiable, Codable, Hashable {
    let id: String
    let name: String
    let category: IBACategory
    let baseSpirit: BaseSpirit
    let glassware: String
    let ingredients: [Ingredient]
    let method: [String]
    let garnish: String
    let technique: Technique
    let difficulty: Difficulty
    let flavorNotes: String
    let history: String
}
