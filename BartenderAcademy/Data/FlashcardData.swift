import Foundation

enum FlashcardData {
    static let recipeCards: [Flashcard] = CocktailData.all.map { cocktail in
        Flashcard(
            id: "fc-recipe-\(cocktail.id)",
            front: "What's in a \(cocktail.name)?",
            back: cocktail.ingredients.map { "\($0.amount) — \($0.name)" }.joined(separator: "\n")
                + "\n\nGlass: \(cocktail.glassware)  •  Technique: \(cocktail.technique.rawValue)",
            category: .recipe
        )
    }

    static let techniqueCards: [Flashcard] = [
        Flashcard(id: "fc-tech-shake", front: "When should you shake a cocktail?", back: "When it contains juice, dairy, egg white, or syrup — ingredients that need aeration and full combining.", category: .technique),
        Flashcard(id: "fc-tech-stir", front: "When should you stir a cocktail?", back: "When it's all spirits and modifiers (no juice/dairy), to chill and dilute without clouding it with air bubbles.", category: .technique),
        Flashcard(id: "fc-tech-build", front: "What does it mean to 'build' a drink?", back: "Assembling ingredients directly in the serving glass, usually over ice, with little extra mixing.", category: .technique),
        Flashcard(id: "fc-tech-muddle", front: "What is muddling?", back: "Pressing and gently crushing fruit, herbs, or sugar to release juice, oils, and aroma.", category: .technique),
        Flashcard(id: "fc-tech-double-strain", front: "What is double straining?", back: "Straining through both the shaker's strainer and a separate fine mesh strainer to remove small ice shards or pulp.", category: .technique),
        Flashcard(id: "fc-tech-dry-shake", front: "What is a 'dry shake'?", back: "Shaking ingredients (often with egg white) without ice first to build foam, then shaking again with ice to chill.", category: .technique),
        Flashcard(id: "fc-tech-jigger", front: "What is a jigger used for?", back: "Measuring precise, consistent pours of liquid ingredients.", category: .technique),
        Flashcard(id: "fc-tech-rinse", front: "What does it mean to 'rinse' a glass?", back: "Coating the inside of a glass with a small amount of spirit, then discarding the excess before building the drink.", category: .technique),
        Flashcard(id: "fc-tech-float", front: "What is a 'float' in cocktail making?", back: "Gently pouring a liquid over the back of a bar spoon so it sits on top of the drink instead of mixing in.", category: .technique),
        Flashcard(id: "fc-tech-express", front: "What does it mean to 'express' a citrus peel?", back: "Squeezing/twisting a peel over the drink to release its aromatic oils onto the surface.", category: .technique)
    ]

    static let spiritCards: [Flashcard] = [
        Flashcard(id: "fc-spirit-gin", front: "What botanical must be present for a spirit to be called gin?", back: "Juniper — it's the required, defining flavor of gin.", category: .spirit),
        Flashcard(id: "fc-spirit-vodka", front: "What is vodka's defining characteristic?", back: "A neutral, filtered spirit with minimal flavor, adding strength and body without competing with other ingredients.", category: .spirit),
        Flashcard(id: "fc-spirit-rum", front: "What is rum distilled from?", back: "Sugarcane juice or molasses.", category: .spirit),
        Flashcard(id: "fc-spirit-tequila", front: "What plant must tequila be made from?", back: "Blue agave, grown in specific regions of Mexico.", category: .spirit),
        Flashcard(id: "fc-spirit-bourbon", front: "What is bourbon's minimum corn content?", back: "At least 51% corn in the mash bill, aged in new charred oak barrels.", category: .spirit),
        Flashcard(id: "fc-spirit-rye", front: "How does rye whiskey differ from bourbon?", back: "Rye is at least 51% rye grain, giving it a spicier, drier profile than sweeter bourbon.", category: .spirit),
        Flashcard(id: "fc-spirit-brandy", front: "What is brandy distilled from?", back: "Fermented fruit, most commonly grapes.", category: .spirit),
        Flashcard(id: "fc-spirit-cachaca", front: "How is cachaça different from rum?", back: "Cachaça is made from fresh sugarcane juice, while most rum is made from molasses.", category: .spirit)
    ]

    static let termCards: [Flashcard] = GlossaryData.terms.map { term in
        Flashcard(
            id: "fc-term-\(term.term.lowercased().replacingOccurrences(of: " ", with: "-"))",
            front: term.term,
            back: term.definition,
            category: .term
        )
    }

    static var all: [Flashcard] {
        recipeCards + techniqueCards + spiritCards + termCards
    }
}
