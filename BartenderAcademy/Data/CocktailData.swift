import Foundation

enum CocktailData {
    static let all: [Cocktail] = [
        Cocktail(
            id: "old-fashioned",
            name: "Old Fashioned",
            category: .unforgettables,
            baseSpirit: .whiskey,
            glassware: "Rocks glass",
            ingredients: [
                Ingredient(name: "Bourbon or rye whiskey", amount: "60 ml"),
                Ingredient(name: "Sugar cube (or simple syrup)", amount: "1 cube / 6 ml"),
                Ingredient(name: "Angostura bitters", amount: "2-3 dashes"),
                Ingredient(name: "Water", amount: "1 splash")
            ],
            method: [
                "Muddle the sugar cube with bitters and a splash of water in the glass until dissolved.",
                "Add a large ice cube and pour in the whiskey.",
                "Stir gently for about 20 seconds to chill and dilute slightly.",
                "Express an orange peel over the top and drop it in."
            ],
            garnish: "Orange peel, optional cherry",
            technique: .built,
            difficulty: .easy,
            flavorNotes: "Boozy, gently sweet, aromatic with bitters and citrus oil.",
            history: "One of the oldest named cocktails, dating to early 1800s America — the template that gave 'cocktail' its original definition of spirit, sugar, water, and bitters."
        ),
        Cocktail(
            id: "martini",
            name: "Dry Martini",
            category: .unforgettables,
            baseSpirit: .gin,
            glassware: "Martini (cocktail) glass",
            ingredients: [
                Ingredient(name: "Gin", amount: "60 ml"),
                Ingredient(name: "Dry vermouth", amount: "10 ml")
            ],
            method: [
                "Add gin and vermouth to a mixing glass filled with ice.",
                "Stir for 20-30 seconds until well chilled.",
                "Strain into a chilled martini glass."
            ],
            garnish: "Lemon twist or olives",
            technique: .stirred,
            difficulty: .easy,
            flavorNotes: "Crisp, bone-dry, botanical — all about the quality of the gin.",
            history: "The definitive stirred cocktail; ratios have swung drier over the 20th century, from equal parts to today's near-gin-only pours."
        ),
        Cocktail(
            id: "manhattan",
            name: "Manhattan",
            category: .unforgettables,
            baseSpirit: .whiskey,
            glassware: "Coupe or martini glass",
            ingredients: [
                Ingredient(name: "Rye whiskey", amount: "60 ml"),
                Ingredient(name: "Sweet vermouth", amount: "30 ml"),
                Ingredient(name: "Angostura bitters", amount: "2 dashes")
            ],
            method: [
                "Add all ingredients to a mixing glass with ice.",
                "Stir until well chilled, about 20-30 seconds.",
                "Strain into a chilled coupe."
            ],
            garnish: "Brandied cherry",
            technique: .stirred,
            difficulty: .easy,
            flavorNotes: "Rich, spiced, slightly sweet with a whiskey backbone.",
            history: "Said to originate in Manhattan in the 1870s-80s; the whiskey-and-vermouth template spawned countless variations (Rob Roy, Boulevardier)."
        ),
        Cocktail(
            id: "daiquiri",
            name: "Daiquiri",
            category: .unforgettables,
            baseSpirit: .rum,
            glassware: "Coupe",
            ingredients: [
                Ingredient(name: "White rum", amount: "60 ml"),
                Ingredient(name: "Fresh lime juice", amount: "25 ml"),
                Ingredient(name: "Simple syrup", amount: "20 ml")
            ],
            method: [
                "Add all ingredients to a shaker with ice.",
                "Shake hard for 10-15 seconds.",
                "Double strain into a chilled coupe."
            ],
            garnish: "Lime wheel (optional)",
            technique: .shaken,
            difficulty: .easy,
            flavorNotes: "Bright, tart, clean — the archetypal sour.",
            history: "Named after a mining town in Cuba; the simple rum-lime-sugar formula is the backbone of the entire 'sour' family of cocktails."
        ),
        Cocktail(
            id: "margarita",
            name: "Margarita",
            category: .unforgettables,
            baseSpirit: .tequila,
            glassware: "Margarita or rocks glass",
            ingredients: [
                Ingredient(name: "Blanco tequila", amount: "50 ml"),
                Ingredient(name: "Triple sec / orange liqueur", amount: "20 ml"),
                Ingredient(name: "Fresh lime juice", amount: "20 ml")
            ],
            method: [
                "Optionally salt the rim of the glass.",
                "Shake all ingredients with ice.",
                "Strain into a salt-rimmed glass over fresh ice, or up into a coupe."
            ],
            garnish: "Lime wheel, salt rim",
            technique: .shaken,
            difficulty: .easy,
            flavorNotes: "Tart, citrusy, agave-forward with a salty edge.",
            history: "Mexico's most exported cocktail; essentially a tequila-based sidecar, popularized in the US from the 1930s-40s onward."
        ),
        Cocktail(
            id: "negroni",
            name: "Negroni",
            category: .unforgettables,
            baseSpirit: .gin,
            glassware: "Rocks glass",
            ingredients: [
                Ingredient(name: "Gin", amount: "30 ml"),
                Ingredient(name: "Sweet vermouth", amount: "30 ml"),
                Ingredient(name: "Campari", amount: "30 ml")
            ],
            method: [
                "Add all three ingredients to a mixing glass with ice.",
                "Stir until chilled.",
                "Strain over a large ice cube in a rocks glass."
            ],
            garnish: "Orange peel",
            technique: .stirred,
            difficulty: .easy,
            flavorNotes: "Bitter, bittersweet, herbal — an acquired-taste aperitivo classic.",
            history: "Created in Florence, Italy around 1919 when Count Camillo Negroni asked for his Americano strengthened with gin instead of soda."
        ),
        Cocktail(
            id: "sidecar",
            name: "Sidecar",
            category: .unforgettables,
            baseSpirit: .brandy,
            glassware: "Coupe",
            ingredients: [
                Ingredient(name: "Cognac", amount: "50 ml"),
                Ingredient(name: "Orange liqueur (Cointreau)", amount: "20 ml"),
                Ingredient(name: "Fresh lemon juice", amount: "20 ml")
            ],
            method: [
                "Optionally sugar-rim the glass.",
                "Shake all ingredients with ice.",
                "Double strain into a chilled coupe."
            ],
            garnish: "Sugar rim, lemon twist",
            technique: .shaken,
            difficulty: .medium,
            flavorNotes: "Bright citrus balanced by rich cognac warmth.",
            history: "A Prohibition-era classic first served in Paris, reportedly named after the motorcycle sidecar its inventor arrived in."
        ),
        Cocktail(
            id: "whiskey-sour",
            name: "Whiskey Sour",
            category: .unforgettables,
            baseSpirit: .whiskey,
            glassware: "Rocks glass",
            ingredients: [
                Ingredient(name: "Bourbon whiskey", amount: "60 ml"),
                Ingredient(name: "Fresh lemon juice", amount: "25 ml"),
                Ingredient(name: "Simple syrup", amount: "20 ml"),
                Ingredient(name: "Egg white (optional)", amount: "1 egg white / 20 ml")
            ],
            method: [
                "Dry shake (no ice) if using egg white to build foam.",
                "Add ice and shake hard again until well chilled.",
                "Strain into a rocks glass over fresh ice, or up into a coupe."
            ],
            garnish: "Angostura bitters drops, cherry",
            technique: .shaken,
            difficulty: .medium,
            flavorNotes: "Tart, silky, balanced sweet-sour with whiskey warmth.",
            history: "One of the four foundational 'families' of cocktails (the sour); the egg-white version became standard in the 20th century."
        ),
        Cocktail(
            id: "mojito",
            name: "Mojito",
            category: .unforgettables,
            baseSpirit: .rum,
            glassware: "Highball glass",
            ingredients: [
                Ingredient(name: "White rum", amount: "60 ml"),
                Ingredient(name: "Fresh lime juice", amount: "25 ml"),
                Ingredient(name: "Sugar (or simple syrup)", amount: "2 tsp / 15 ml"),
                Ingredient(name: "Mint leaves", amount: "8-10 leaves"),
                Ingredient(name: "Soda water", amount: "to top")
            ],
            method: [
                "Gently muddle mint with sugar and lime juice in the glass (don't shred the mint).",
                "Fill the glass with crushed or cubed ice.",
                "Add rum and stir.",
                "Top with soda water and stir once more."
            ],
            garnish: "Mint sprig, lime wheel",
            technique: .muddled,
            difficulty: .medium,
            flavorNotes: "Refreshing, herbal, tart, effervescent.",
            history: "A Cuban highball with roots possibly tracing back centuries; boomed globally in the late 20th century."
        ),
        Cocktail(
            id: "pina-colada",
            name: "Piña Colada",
            category: .unforgettables,
            baseSpirit: .rum,
            glassware: "Hurricane or poco glass",
            ingredients: [
                Ingredient(name: "White or gold rum", amount: "60 ml"),
                Ingredient(name: "Coconut cream", amount: "30 ml"),
                Ingredient(name: "Pineapple juice", amount: "90 ml")
            ],
            method: [
                "Combine all ingredients with ice in a blender.",
                "Blend until smooth and frosty.",
                "Pour into a hurricane glass."
            ],
            garnish: "Pineapple wedge, cherry",
            technique: .blended,
            difficulty: .easy,
            flavorNotes: "Sweet, tropical, creamy coconut and pineapple.",
            history: "Puerto Rico's national drink, created in San Juan in the 1950s-60s."
        ),
        Cocktail(
            id: "cosmopolitan",
            name: "Cosmopolitan",
            category: .newEra,
            baseSpirit: .vodka,
            glassware: "Martini glass",
            ingredients: [
                Ingredient(name: "Citrus vodka", amount: "40 ml"),
                Ingredient(name: "Triple sec", amount: "15 ml"),
                Ingredient(name: "Cranberry juice", amount: "30 ml"),
                Ingredient(name: "Fresh lime juice", amount: "15 ml")
            ],
            method: [
                "Shake all ingredients hard with ice.",
                "Double strain into a chilled martini glass."
            ],
            garnish: "Lime wheel or orange twist",
            technique: .shaken,
            difficulty: .easy,
            flavorNotes: "Tart-sweet, fruity, pink and pretty.",
            history: "Rose to fame in 1990s New York nightlife and was cemented by pop culture as the era's signature cocktail."
        ),
        Cocktail(
            id: "espresso-martini",
            name: "Espresso Martini",
            category: .newEra,
            baseSpirit: .vodka,
            glassware: "Martini glass",
            ingredients: [
                Ingredient(name: "Vodka", amount: "50 ml"),
                Ingredient(name: "Coffee liqueur (Kahlúa)", amount: "20 ml"),
                Ingredient(name: "Fresh espresso", amount: "30 ml"),
                Ingredient(name: "Simple syrup", amount: "10 ml, to taste")
            ],
            method: [
                "Shake all ingredients hard with ice — this builds the signature foam.",
                "Double strain into a chilled martini glass."
            ],
            garnish: "3 coffee beans",
            technique: .shaken,
            difficulty: .medium,
            flavorNotes: "Bittersweet coffee, boozy, silky foam cap.",
            history: "Invented by bartender Dick Bradsell in London in the late 1980s after a customer asked for a drink to 'wake me up.'"
        ),
        Cocktail(
            id: "mai-tai",
            name: "Mai Tai",
            category: .newEra,
            baseSpirit: .rum,
            glassware: "Rocks glass",
            ingredients: [
                Ingredient(name: "Aged rum (dark + light blend)", amount: "60 ml"),
                Ingredient(name: "Orange curaçao", amount: "15 ml"),
                Ingredient(name: "Orgeat (almond syrup)", amount: "15 ml"),
                Ingredient(name: "Fresh lime juice", amount: "25 ml")
            ],
            method: [
                "Shake all ingredients with crushed ice.",
                "Pour (unstrained) into a rocks glass.",
                "Add more crushed ice to fill."
            ],
            garnish: "Mint sprig, spent lime shell",
            technique: .shaken,
            difficulty: .medium,
            flavorNotes: "Nutty, citrusy, rich rum layered flavors.",
            history: "Created by Victor 'Trader Vic' Bergeron in 1944, a cornerstone of American tiki culture."
        ),
        Cocktail(
            id: "moscow-mule",
            name: "Moscow Mule",
            category: .newEra,
            baseSpirit: .vodka,
            glassware: "Copper mug",
            ingredients: [
                Ingredient(name: "Vodka", amount: "50 ml"),
                Ingredient(name: "Fresh lime juice", amount: "15 ml"),
                Ingredient(name: "Ginger beer", amount: "to top, ~120 ml")
            ],
            method: [
                "Fill a copper mug with ice.",
                "Add vodka and lime juice.",
                "Top with ginger beer and stir gently."
            ],
            garnish: "Lime wheel, mint sprig",
            technique: .built,
            difficulty: .easy,
            flavorNotes: "Spicy ginger, tart lime, clean vodka.",
            history: "Invented in 1940s Los Angeles as a marketing collaboration to sell vodka and ginger beer together; the copper mug became iconic."
        ),
        Cocktail(
            id: "french-75",
            name: "French 75",
            category: .newEra,
            baseSpirit: .gin,
            glassware: "Champagne flute",
            ingredients: [
                Ingredient(name: "Gin", amount: "30 ml"),
                Ingredient(name: "Fresh lemon juice", amount: "15 ml"),
                Ingredient(name: "Simple syrup", amount: "10 ml"),
                Ingredient(name: "Champagne", amount: "to top")
            ],
            method: [
                "Shake gin, lemon juice, and syrup with ice.",
                "Strain into a champagne flute.",
                "Top with chilled champagne."
            ],
            garnish: "Lemon twist",
            technique: .shaken,
            difficulty: .medium,
            flavorNotes: "Effervescent, citrusy, elegant with a gin kick.",
            history: "Named after the powerful French 75mm field gun; first appeared around World War I in Paris."
        ),
        Cocktail(
            id: "aviation",
            name: "Aviation",
            category: .newEra,
            baseSpirit: .gin,
            glassware: "Coupe",
            ingredients: [
                Ingredient(name: "Gin", amount: "45 ml"),
                Ingredient(name: "Maraschino liqueur", amount: "15 ml"),
                Ingredient(name: "Fresh lemon juice", amount: "15 ml"),
                Ingredient(name: "Crème de violette", amount: "5 ml, optional")
            ],
            method: [
                "Shake all ingredients with ice.",
                "Double strain into a chilled coupe."
            ],
            garnish: "Brandied cherry",
            technique: .shaken,
            difficulty: .medium,
            flavorNotes: "Floral, tart, subtly sweet with a pale violet hue.",
            history: "A pre-Prohibition classic that fell out of favor when crème de violette became hard to find in the US, then resurged in the 2000s cocktail revival."
        ),
        Cocktail(
            id: "tom-collins",
            name: "Tom Collins",
            category: .newEra,
            baseSpirit: .gin,
            glassware: "Collins glass",
            ingredients: [
                Ingredient(name: "Gin", amount: "50 ml"),
                Ingredient(name: "Fresh lemon juice", amount: "25 ml"),
                Ingredient(name: "Simple syrup", amount: "15 ml"),
                Ingredient(name: "Soda water", amount: "to top")
            ],
            method: [
                "Shake gin, lemon juice, and syrup with ice.",
                "Strain into a Collins glass filled with ice.",
                "Top with soda water and stir gently."
            ],
            garnish: "Lemon wheel, cherry",
            technique: .shaken,
            difficulty: .easy,
            flavorNotes: "Long, fizzy, tart and refreshing.",
            history: "A gin sour lengthened with soda; the namesake of the whole 'Collins glass' and a template for many fizzy long drinks."
        ),
        Cocktail(
            id: "sazerac",
            name: "Sazerac",
            category: .newEra,
            baseSpirit: .whiskey,
            glassware: "Rocks glass",
            ingredients: [
                Ingredient(name: "Rye whiskey", amount: "60 ml"),
                Ingredient(name: "Sugar cube", amount: "1 cube"),
                Ingredient(name: "Peychaud's bitters", amount: "3 dashes"),
                Ingredient(name: "Absinthe rinse", amount: "a few drops")
            ],
            method: [
                "Rinse a chilled rocks glass with absinthe, discard excess.",
                "In a separate mixing glass, muddle the sugar cube with bitters.",
                "Add rye and ice, stir until chilled.",
                "Strain into the absinthe-rinsed glass (no ice)."
            ],
            garnish: "Lemon peel (expressed, not dropped in)",
            technique: .stirred,
            difficulty: .hard,
            flavorNotes: "Spicy rye, anise aromatics, no dilution — strong and complex.",
            history: "New Orleans' official cocktail, dating to the mid-1800s; one of the oldest American cocktails still served in its near-original form."
        ),
        Cocktail(
            id: "paloma",
            name: "Paloma",
            category: .contemporary,
            baseSpirit: .tequila,
            glassware: "Highball glass",
            ingredients: [
                Ingredient(name: "Blanco tequila", amount: "50 ml"),
                Ingredient(name: "Fresh lime juice", amount: "15 ml"),
                Ingredient(name: "Grapefruit soda", amount: "to top"),
                Ingredient(name: "Salt", amount: "pinch, rim optional")
            ],
            method: [
                "Fill a highball glass with ice.",
                "Add tequila and lime juice.",
                "Top with grapefruit soda and stir gently."
            ],
            garnish: "Grapefruit wedge, salt rim",
            technique: .built,
            difficulty: .easy,
            flavorNotes: "Bittersweet grapefruit, tart, fizzy, easy-drinking.",
            history: "Arguably Mexico's most popular tequila cocktail, more commonly ordered there than the Margarita."
        ),
        Cocktail(
            id: "dark-and-stormy",
            name: "Dark 'n' Stormy",
            category: .contemporary,
            baseSpirit: .rum,
            glassware: "Highball glass",
            ingredients: [
                Ingredient(name: "Dark rum", amount: "50 ml"),
                Ingredient(name: "Ginger beer", amount: "to top, ~120 ml"),
                Ingredient(name: "Fresh lime juice", amount: "10 ml, optional")
            ],
            method: [
                "Fill a highball glass with ice and add ginger beer and lime.",
                "Float the dark rum on top, pouring gently over a bar spoon.",
                "Do not stir, to preserve the 'stormy sky' layered look (optional)."
            ],
            garnish: "Lime wedge",
            technique: .built,
            difficulty: .easy,
            flavorNotes: "Spicy ginger with rich, dark rum warmth on top.",
            history: "Bermuda's national drink, tied historically to Gosling's Black Seal rum."
        ),
        Cocktail(
            id: "aperol-spritz",
            name: "Aperol Spritz",
            category: .contemporary,
            baseSpirit: .liqueur,
            glassware: "Wine glass",
            ingredients: [
                Ingredient(name: "Aperol", amount: "60 ml"),
                Ingredient(name: "Prosecco", amount: "90 ml"),
                Ingredient(name: "Soda water", amount: "a splash")
            ],
            method: [
                "Fill a wine glass with ice.",
                "Add Aperol, then prosecco.",
                "Top with a splash of soda water and stir gently."
            ],
            garnish: "Orange slice",
            technique: .built,
            difficulty: .easy,
            flavorNotes: "Bittersweet orange, light, bubbly, low-alcohol.",
            history: "A Venetian aperitivo staple that became a global summer phenomenon in the 2010s."
        ),
        Cocktail(
            id: "boulevardier",
            name: "Boulevardier",
            category: .contemporary,
            baseSpirit: .whiskey,
            glassware: "Rocks glass",
            ingredients: [
                Ingredient(name: "Bourbon or rye whiskey", amount: "30 ml"),
                Ingredient(name: "Sweet vermouth", amount: "30 ml"),
                Ingredient(name: "Campari", amount: "30 ml")
            ],
            method: [
                "Add all ingredients to a mixing glass with ice.",
                "Stir until chilled.",
                "Strain over a large ice cube."
            ],
            garnish: "Orange twist",
            technique: .stirred,
            difficulty: .easy,
            flavorNotes: "Bitter, bold, whiskey-forward Negroni cousin.",
            history: "Essentially a Negroni with whiskey instead of gin; created in 1920s Paris for an American expat magazine editor."
        ),
        Cocktail(
            id: "last-word",
            name: "Last Word",
            category: .contemporary,
            baseSpirit: .gin,
            glassware: "Coupe",
            ingredients: [
                Ingredient(name: "Gin", amount: "20 ml"),
                Ingredient(name: "Green Chartreuse", amount: "20 ml"),
                Ingredient(name: "Maraschino liqueur", amount: "20 ml"),
                Ingredient(name: "Fresh lime juice", amount: "20 ml")
            ],
            method: [
                "Shake all ingredients (equal parts) hard with ice.",
                "Double strain into a chilled coupe."
            ],
            garnish: "None traditionally",
            technique: .shaken,
            difficulty: .medium,
            flavorNotes: "Herbal, tart, boldly complex — strong Chartreuse presence.",
            history: "Born at the Detroit Athletic Club in the 1920s, forgotten for decades, then revived by a Seattle bartender in the 2000s."
        ),
        Cocktail(
            id: "caipirinha",
            name: "Caipirinha",
            category: .contemporary,
            baseSpirit: .liqueur,
            glassware: "Rocks glass",
            ingredients: [
                Ingredient(name: "Cachaça", amount: "60 ml"),
                Ingredient(name: "Lime", amount: "1 whole, cut into wedges"),
                Ingredient(name: "Sugar", amount: "2 tsp")
            ],
            method: [
                "Muddle lime wedges with sugar in the glass to release oils and juice.",
                "Fill with crushed ice.",
                "Add cachaça and stir well."
            ],
            garnish: "Lime wedge",
            technique: .muddled,
            difficulty: .easy,
            flavorNotes: "Tart, sweet, funky sugarcane spirit.",
            history: "Brazil's national cocktail, built around cachaça, a sugarcane spirit distinct from rum."
        ),
        Cocktail(
            id: "gimlet",
            name: "Gimlet",
            category: .contemporary,
            baseSpirit: .gin,
            glassware: "Coupe",
            ingredients: [
                Ingredient(name: "Gin", amount: "60 ml"),
                Ingredient(name: "Lime cordial (Rose's or fresh lime + syrup)", amount: "20 ml")
            ],
            method: [
                "Shake gin and lime cordial with ice.",
                "Double strain into a chilled coupe."
            ],
            garnish: "Lime wheel",
            technique: .shaken,
            difficulty: .easy,
            flavorNotes: "Sweet-tart, clean, juniper-forward.",
            history: "Linked to the Royal Navy, where lime cordial was carried to prevent scurvy and mixed with the officers' gin ration."
        ),
        Cocktail(
            id: "bloody-mary",
            name: "Bloody Mary",
            category: .contemporary,
            baseSpirit: .vodka,
            glassware: "Highball glass",
            ingredients: [
                Ingredient(name: "Vodka", amount: "50 ml"),
                Ingredient(name: "Tomato juice", amount: "100 ml"),
                Ingredient(name: "Fresh lemon juice", amount: "10 ml"),
                Ingredient(name: "Worcestershire sauce", amount: "3 dashes"),
                Ingredient(name: "Tabasco / hot sauce", amount: "2 dashes"),
                Ingredient(name: "Salt & pepper", amount: "to taste")
            ],
            method: [
                "Add all ingredients to a shaker or mixing tin with ice.",
                "Roll or stir gently to combine without over-aerating.",
                "Strain into an ice-filled highball glass."
            ],
            garnish: "Celery stalk, lemon wedge, olives",
            technique: .built,
            difficulty: .medium,
            flavorNotes: "Savory, spicy, tangy — a brunch staple and popular hangover cure.",
            history: "Created in the 1920s-30s, likely in Paris or New York; countless regional garnish variations exist today."
        ),
        Cocktail(
            id: "pisco-sour",
            name: "Pisco Sour",
            category: .contemporary,
            baseSpirit: .brandy,
            glassware: "Coupe",
            ingredients: [
                Ingredient(name: "Pisco", amount: "60 ml"),
                Ingredient(name: "Fresh lime juice", amount: "25 ml"),
                Ingredient(name: "Simple syrup", amount: "20 ml"),
                Ingredient(name: "Egg white", amount: "1 egg white / 20 ml"),
                Ingredient(name: "Angostura bitters", amount: "a few drops, to garnish")
            ],
            method: [
                "Dry shake all ingredients (except bitters) without ice to build foam.",
                "Add ice and shake hard again until well chilled.",
                "Double strain into a chilled coupe.",
                "Dot bitters on the foam for garnish."
            ],
            garnish: "Angostura bitters dots on the foam",
            technique: .shaken,
            difficulty: .medium,
            flavorNotes: "Tart, frothy, grape-brandy aromatics.",
            history: "Peru and Chile's signature cocktail, built on pisco, a grape brandy unique to South America."
        )
    ]

    static func byID(_ id: String) -> Cocktail? {
        all.first { $0.id == id }
    }
}
