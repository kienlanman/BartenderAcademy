import Foundation

struct ContentBlock: Codable, Hashable, Identifiable {
    enum Kind: String, Codable {
        case heading, paragraph, bullet, tip, warning
    }
    var id: String { text }
    let kind: Kind
    let text: String
}

struct QuizQuestion: Codable, Hashable, Identifiable {
    let id: String
    let prompt: String
    let choices: [String]
    let correctIndex: Int
    let explanation: String
}

struct Lesson: Codable, Hashable, Identifiable {
    let id: String
    let title: String
    let estimatedMinutes: Int
    let blocks: [ContentBlock]
    let quiz: [QuizQuestion]
}

struct Module: Codable, Hashable, Identifiable {
    let id: String
    let title: String
    let subtitle: String
    let icon: String
    let lessons: [Lesson]
}
