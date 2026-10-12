import Foundation

enum CurriculumData {
    static let modules: [Module] = [
        // MARK: - Module 1: Bar Basics & Safety
        Module(
            id: "mod-basics",
            title: "Bar Basics & Safety",
            subtitle: "Start here: the fundamentals every bartender needs",
            icon: "checkmark.shield.fill",
            lessons: [
                Lesson(
                    id: "les-what-is-cocktail",
                    title: "What Makes a Cocktail",
                    estimatedMinutes: 4,
                    blocks: [
                        ContentBlock(kind: .heading, text: "The Four Building Blocks"),
                        ContentBlock(kind: .paragraph, text: "Almost every classic cocktail is built from four elements: a base spirit, a modifier (vermouth, liqueur, juice), a sweetener, and a sour or bittering agent. Learning to recognize these parts helps you understand — and eventually invent — any recipe."),
                        ContentBlock(kind: .bullet, text: "Base spirit: gin, vodka, rum, tequila, whiskey, brandy"),
                        ContentBlock(kind: .bullet, text: "Modifier: vermouth, liqueur, wine, bitters"),
                        ContentBlock(kind: .bullet, text: "Sweetener: simple syrup, sugar, honey, orgeat"),
                        ContentBlock(kind: .bullet, text: "Sour: lime, lemon, grapefruit juice"),
                        ContentBlock(kind: .tip, text: "Balance, not sweetness or strength alone, is what separates a good cocktail from a great one.")
                    ],
                    quiz: [
                        QuizQuestion(id: "q1", prompt: "Which of these is NOT one of the four core cocktail building blocks?", choices: ["Base spirit", "Sweetener", "Garnish", "Sour agent"], correctIndex: 2, explanation: "Garnish is a finishing touch, not a structural building block of flavor and balance."),
                        QuizQuestion(id: "q2", prompt: "What best defines a well-made cocktail?", choices: ["Maximum alcohol content", "Balance between its elements", "Using the most expensive spirit", "As many ingredients as possible"], correctIndex: 1, explanation: "Balance between sweet, sour, strong, and bitter elements is the hallmark of a great cocktail."),
                        QuizQuestion(id: "q3", prompt: "Which of these is a common 'sour' component?", choices: ["Simple syrup", "Fresh lime juice", "Sweet vermouth", "Angostura bitters"], correctIndex: 1, explanation: "Fresh citrus juice like lime or lemon provides the sour element in most sour-style cocktails.")
                    ]
                ),
                Lesson(
                    id: "les-hygiene-safety",
                    title: "Hygiene & Bar Safety",
                    estimatedMinutes: 5,
                    blocks: [
                        ContentBlock(kind: .heading, text: "Working Clean and Safe"),
                        ContentBlock(kind: .paragraph, text: "A professional bar runs on cleanliness and careful handling. Guests trust that everything touching their drink is safe."),
                        ContentBlock(kind: .bullet, text: "Wash hands frequently and always after handling garnishes or cash"),
                        ContentBlock(kind: .bullet, text: "Use separate cutting boards/knives for citrus vs. other prep when required by local code"),
                        ContentBlock(kind: .bullet, text: "Never taste-test with your fingers — use a straw or clean spoon"),
                        ContentBlock(kind: .bullet, text: "Handle glassware by the base or stem, never touching the rim"),
                        ContentBlock(kind: .warning, text: "Always inspect glassware for chips or cracks before use — discard anything damaged immediately."),
                        ContentBlock(kind: .tip, text: "Keep your station organized: 'a clean bar is a fast bar.'")
                    ],
                    quiz: [
                        QuizQuestion(id: "q1", prompt: "Where should you hold a cocktail glass to keep it hygienic?", choices: ["By the rim", "By the base or stem", "Wherever is convenient", "With a bar towel wrapped around it"], correctIndex: 1, explanation: "Holding by the base or stem avoids contaminating the rim guests will drink from."),
                        QuizQuestion(id: "q2", prompt: "What should you do with a chipped or cracked glass?", choices: ["Use it for well drinks only", "Discard it immediately", "Use it for staff drinks", "Sand down the chip"], correctIndex: 1, explanation: "Damaged glassware is a safety hazard and should be discarded right away."),
                        QuizQuestion(id: "q3", prompt: "How should you taste-test a drink while working?", choices: ["With a clean straw or spoon", "With your finger", "By sipping straight from the shaker", "You should never taste a drink"], correctIndex: 0, explanation: "A clean straw or spoon keeps the process sanitary.")
                    ]
                ),
                Lesson(
                    id: "les-glassware",
                    title: "Glassware Guide",
                    estimatedMinutes: 5,
                    blocks: [
                        ContentBlock(kind: .heading, text: "The Right Glass for the Job"),
                        ContentBlock(kind: .paragraph, text: "Glassware isn't just presentation — shape affects aroma, temperature retention, and how a drink is sipped."),
                        ContentBlock(kind: .bullet, text: "Rocks / Old Fashioned glass: short, wide — for spirit-forward drinks over ice"),
                        ContentBlock(kind: .bullet, text: "Coupe / Martini glass: stemmed, up drinks served without ice"),
                        ContentBlock(kind: .bullet, text: "Highball / Collins glass: tall — for long drinks topped with soda or juice"),
                        ContentBlock(kind: .bullet, text: "Copper mug: traditionally used for the Moscow Mule, keeps drinks extra cold"),
                        ContentBlock(kind: .tip, text: "Chilling glassware in a freezer or with ice before pouring keeps drinks colder longer.")
                    ],
                    quiz: [
                        QuizQuestion(id: "q1", prompt: "Which glass is traditionally used for an Old Fashioned?", choices: ["Coupe", "Rocks glass", "Champagne flute", "Copper mug"], correctIndex: 1, explanation: "The Old Fashioned is served over ice in a short, wide rocks glass."),
                        QuizQuestion(id: "q2", prompt: "A 'Collins glass' is best suited for which type of drink?", choices: ["Short, spirit-forward stirred drinks", "Long drinks topped with soda", "Frozen blended drinks", "Straight-up cocktails with no ice"], correctIndex: 1, explanation: "Collins glasses are tall, made for long, topped-up drinks like the Tom Collins."),
                        QuizQuestion(id: "q3", prompt: "Why chill a glass before pouring a drink into it?", choices: ["It looks nicer only", "It keeps the drink colder for longer", "It's required by law", "It changes the drink's flavor"], correctIndex: 1, explanation: "A pre-chilled glass slows down how quickly the drink warms up.")
                    ]
                )
            ]
        ),

        // MARK: - Module 2: Spirits 101
        Module(
            id: "mod-spirits",
            title: "Spirits 101",
            subtitle: "Know your base spirits inside and out",
            icon: "flame.fill",
            lessons: [
                Lesson(
                    id: "les-vodka-gin",
                    title: "Vodka & Gin",
                    estimatedMinutes: 6,
                    blocks: [
                        ContentBlock(kind: .heading, text: "Vodka"),
                        ContentBlock(kind: .paragraph, text: "Vodka is a neutral spirit, distilled to a very high proof and typically filtered to remove flavor, then diluted with water. Its job in a cocktail is to add strength and body without competing with other ingredients."),
                        ContentBlock(kind: .heading, text: "Gin"),
                        ContentBlock(kind: .paragraph, text: "Gin starts as a neutral spirit like vodka, then is redistilled or infused with botanicals — juniper berries are the required, defining note, alongside coriander, citrus peel, and other aromatics."),
                        ContentBlock(kind: .bullet, text: "London Dry Gin: crisp, juniper-forward, no sweetening after distillation"),
                        ContentBlock(kind: .bullet, text: "Plymouth Gin: slightly earthier and rounder"),
                        ContentBlock(kind: .bullet, text: "Contemporary/New Western gins: lighter on juniper, more floral or citrus-forward"),
                        ContentBlock(kind: .tip, text: "Vodka cocktails put mixers front and center; gin cocktails let botanicals shine through.")
                    ],
                    quiz: [
                        QuizQuestion(id: "q1", prompt: "What defining botanical must be present for a spirit to be called gin?", choices: ["Juniper", "Coriander", "Citrus peel", "Anise"], correctIndex: 0, explanation: "Juniper is the required, defining botanical of gin."),
                        QuizQuestion(id: "q2", prompt: "Vodka's main characteristic in cocktails is:", choices: ["Strong smoky flavor", "Sweetness", "Neutral flavor with added strength/body", "Heavy oak notes"], correctIndex: 2, explanation: "Vodka is prized for being neutral, letting other ingredients lead.")
                    ]
                ),
                Lesson(
                    id: "les-rum-tequila",
                    title: "Rum & Tequila",
                    estimatedMinutes: 6,
                    blocks: [
                        ContentBlock(kind: .heading, text: "Rum"),
                        ContentBlock(kind: .paragraph, text: "Rum is distilled from sugarcane juice or molasses. White/light rum is filtered for a clean, mixable base; gold and dark rums are aged in barrels, gaining color, caramel, and spice notes."),
                        ContentBlock(kind: .heading, text: "Tequila"),
                        ContentBlock(kind: .paragraph, text: "Tequila is distilled from the blue agave plant, made only in specific regions of Mexico. Blanco (unaged) is bright and vegetal; reposado and añejo are aged in oak, adding vanilla and caramel."),
                        ContentBlock(kind: .bullet, text: "Blanco/Silver tequila: unaged, agave-forward, best for Margaritas and Palomas"),
                        ContentBlock(kind: .bullet, text: "Reposado: aged 2 months to a year, rounder and slightly oaked"),
                        ContentBlock(kind: .bullet, text: "Añejo: aged 1-3 years, closer to a sipping brandy or whiskey in richness"),
                        ContentBlock(kind: .tip, text: "Cachaça, used in a Caipirinha, is a cousin of rum made from fresh sugarcane juice rather than molasses.")
                    ],
                    quiz: [
                        QuizQuestion(id: "q1", prompt: "Tequila must be made from which plant?", choices: ["Sugarcane", "Blue agave", "Corn", "Grapes"], correctIndex: 1, explanation: "Tequila is legally required to be made from blue agave, in defined regions of Mexico."),
                        QuizQuestion(id: "q2", prompt: "What gives dark/aged rum its color and caramel notes?", choices: ["Added food coloring only", "Barrel aging", "Freezing", "Carbonation"], correctIndex: 1, explanation: "Aging in oak barrels imparts color and rich flavor compounds to rum."),
                        QuizQuestion(id: "q3", prompt: "Cachaça is closely related to which spirit?", choices: ["Whiskey", "Rum", "Gin", "Brandy"], correctIndex: 1, explanation: "Cachaça is a sugarcane spirit like rum, but made from fresh cane juice instead of molasses.")
                    ]
                ),
                Lesson(
                    id: "les-whiskey-brandy",
                    title: "Whiskey & Brandy",
                    estimatedMinutes: 6,
                    blocks: [
                        ContentBlock(kind: .heading, text: "Whiskey"),
                        ContentBlock(kind: .paragraph, text: "Whiskey is distilled from fermented grain mash and aged in wood barrels. Bourbon (mostly corn, American oak, sweeter) and rye (spicier, drier) are the two most common cocktail whiskeys."),
                        ContentBlock(kind: .heading, text: "Brandy"),
                        ContentBlock(kind: .paragraph, text: "Brandy is distilled from fermented fruit, most commonly grapes. Cognac is a protected French brandy style; Pisco is a South American grape brandy used in Pisco Sours."),
                        ContentBlock(kind: .bullet, text: "Bourbon: at least 51% corn, sweeter, vanilla and caramel notes"),
                        ContentBlock(kind: .bullet, text: "Rye: at least 51% rye grain, spicier and drier"),
                        ContentBlock(kind: .bullet, text: "Cognac: grape brandy from a specific French region, aged in oak"),
                        ContentBlock(kind: .tip, text: "Swapping bourbon for rye in a classic (or vice versa) is a great way to explore how base spirit shifts a drink's character.")
                    ],
                    quiz: [
                        QuizQuestion(id: "q1", prompt: "Bourbon must contain at least what percentage of corn?", choices: ["21%", "51%", "80%", "100%"], correctIndex: 1, explanation: "US regulations require bourbon to be at least 51% corn in the mash bill."),
                        QuizQuestion(id: "q2", prompt: "What is brandy distilled from?", choices: ["Grain", "Fruit (commonly grapes)", "Sugarcane", "Agave"], correctIndex: 1, explanation: "Brandy comes from distilled fermented fruit, most often grapes."),
                        QuizQuestion(id: "q3", prompt: "Compared to bourbon, rye whiskey is generally:", choices: ["Sweeter", "Spicier and drier", "Unaged", "Made from agave"], correctIndex: 1, explanation: "Rye's higher rye-grain content gives it a spicier, drier profile than bourbon.")
                    ]
                )
            ]
        ),

        // MARK: - Module 3: Bar Tools & Techniques
        Module(
            id: "mod-tools",
            title: "Bar Tools & Techniques",
            subtitle: "Equipment and the moves that make a drink",
            icon: "hammer.fill",
            lessons: [
                Lesson(
                    id: "les-tools",
                    title: "Tools of the Trade",
                    estimatedMinutes: 5,
                    blocks: [
                        ContentBlock(kind: .heading, text: "Essential Bar Equipment"),
                        ContentBlock(kind: .bullet, text: "Shaker (Boston or cobbler): mixes and chills shaken drinks"),
                        ContentBlock(kind: .bullet, text: "Mixing glass & bar spoon: for stirred drinks"),
                        ContentBlock(kind: .bullet, text: "Jigger: precise measuring, usually two cones (e.g., 30ml/60ml)"),
                        ContentBlock(kind: .bullet, text: "Hawthorne & julep strainers: strain ice and pulp from the drink"),
                        ContentBlock(kind: .bullet, text: "Muddler: presses out juice and oils from fruit and herbs"),
                        ContentBlock(kind: .bullet, text: "Fine mesh strainer: used for 'double straining' to catch small ice shards or herb bits"),
                        ContentBlock(kind: .tip, text: "A well-stocked kit of just 6-7 tools covers nearly every classic cocktail.")
                    ],
                    quiz: [
                        QuizQuestion(id: "q1", prompt: "What tool is used for precise liquid measurement?", choices: ["Muddler", "Jigger", "Julep strainer", "Bar spoon"], correctIndex: 1, explanation: "A jigger is the standard tool for measuring exact pours."),
                        QuizQuestion(id: "q2", prompt: "'Double straining' typically adds which tool to the process?", choices: ["Muddler", "Fine mesh strainer", "Bar spoon", "Jigger"], correctIndex: 1, explanation: "A fine mesh strainer is held over the glass in addition to the main strainer to catch small particles."),
                        QuizQuestion(id: "q3", prompt: "What is a muddler primarily used for?", choices: ["Stirring cocktails", "Measuring spirits", "Pressing juice/oils from fruit or herbs", "Straining ice"], correctIndex: 2, explanation: "Muddlers crush fruit, herbs, or sugar to release flavor and aroma.")
                    ]
                ),
                Lesson(
                    id: "les-core-techniques",
                    title: "Core Techniques: Shake, Stir, Build",
                    estimatedMinutes: 6,
                    blocks: [
                        ContentBlock(kind: .heading, text: "Shaking"),
                        ContentBlock(kind: .paragraph, text: "Used for drinks with juice, dairy, egg white, or syrups — ingredients that need to be aerated and fully combined. Shake hard for 10-15 seconds with plenty of ice."),
                        ContentBlock(kind: .heading, text: "Stirring"),
                        ContentBlock(kind: .paragraph, text: "Used for all-spirit drinks (Martini, Manhattan, Negroni) where you want dilution and chilling without adding air bubbles, keeping the drink silky and clear."),
                        ContentBlock(kind: .heading, text: "Building"),
                        ContentBlock(kind: .paragraph, text: "Ingredients are poured directly into the serving glass, usually over ice, with little to no additional mixing beyond a gentle stir (e.g., Moscow Mule, Paloma)."),
                        ContentBlock(kind: .tip, text: "Rule of thumb: if it contains juice, cream, or egg — shake it. If it's all spirits and modifiers — stir it.")
                    ],
                    quiz: [
                        QuizQuestion(id: "q1", prompt: "Which technique is correct for an all-spirit drink like a Martini?", choices: ["Shaking", "Stirring", "Blending", "Muddling"], correctIndex: 1, explanation: "Stirring chills and dilutes without clouding the drink with air bubbles."),
                        QuizQuestion(id: "q2", prompt: "Why do we shake drinks containing citrus juice or egg white?", choices: ["To reduce dilution", "To aerate and fully combine ingredients", "To warm the drink", "It's purely for show"], correctIndex: 1, explanation: "Shaking aerates and emulsifies ingredients like juice, egg white, or cream."),
                        QuizQuestion(id: "q3", prompt: "A 'built' drink like a Moscow Mule is typically prepared by:", choices: ["Blending with ice", "Shaking vigorously", "Pouring directly into the serving glass over ice", "Double straining into a coupe"], correctIndex: 2, explanation: "Built drinks are assembled directly in the glass they're served in.")
                    ]
                ),
                Lesson(
                    id: "les-measuring",
                    title: "Measuring & Free Pouring",
                    estimatedMinutes: 4,
                    blocks: [
                        ContentBlock(kind: .heading, text: "Why Precision Matters"),
                        ContentBlock(kind: .paragraph, text: "Consistency is what separates a professional from a home mixer. Every guest should get the same great drink, every time."),
                        ContentBlock(kind: .bullet, text: "A standard jigger pour is typically 30 ml (1 oz) and 45-60 ml (1.5-2 oz)"),
                        ContentBlock(kind: .bullet, text: "Free pouring (counting seconds while pouring) is faster once mastered, but requires practice against a jigger to stay accurate"),
                        ContentBlock(kind: .bullet, text: "Recipes are ratios — learning the ratio behind a drink (e.g. 2:1:1 for a sour) lets you scale it up or down"),
                        ContentBlock(kind: .tip, text: "Practice free pouring against a jigger regularly to keep your count calibrated.")
                    ],
                    quiz: [
                        QuizQuestion(id: "q1", prompt: "A common single jigger measurement is approximately:", choices: ["10 ml", "30 ml", "100 ml", "250 ml"], correctIndex: 1, explanation: "30 ml (1 oz) is a standard single-measure pour."),
                        QuizQuestion(id: "q2", prompt: "What is the main risk of free pouring without practice?", choices: ["It's illegal", "Inconsistent, inaccurate measurements", "It makes drinks too cold", "It voids the recipe"], correctIndex: 1, explanation: "Without regular calibration against a jigger, free-poured amounts can drift and become inconsistent.")
                    ]
                )
            ]
        ),

        // MARK: - Module 4: Cocktail Building Blocks
        Module(
            id: "mod-building-blocks",
            title: "Cocktail Building Blocks",
            subtitle: "Templates behind hundreds of recipes",
            icon: "square.stack.3d.up.fill",
            lessons: [
                Lesson(
                    id: "les-sour-template",
                    title: "The Sour Template",
                    estimatedMinutes: 5,
                    blocks: [
                        ContentBlock(kind: .heading, text: "Spirit + Sour + Sweet"),
                        ContentBlock(kind: .paragraph, text: "The sour is one of the oldest cocktail families: a base spirit, fresh citrus juice, and a sweetener, shaken with ice. The Whiskey Sour, Daiquiri, Margarita, and Sidecar are all variations on this same ratio."),
                        ContentBlock(kind: .bullet, text: "Classic ratio: roughly 2 parts spirit, 1 part sour, 1 part sweet (adjust to taste)"),
                        ContentBlock(kind: .bullet, text: "Egg white can be added for texture and a silky foam cap"),
                        ContentBlock(kind: .bullet, text: "Swap the spirit and you get a whole new classic: rum → Daiquiri, tequila → Margarita, brandy → Sidecar"),
                        ContentBlock(kind: .tip, text: "Once you know the sour ratio by heart, you can build a passable version of dozens of cocktails from memory.")
                    ],
                    quiz: [
                        QuizQuestion(id: "q1", prompt: "The Margarita, Daiquiri, and Whiskey Sour all share which structure?", choices: ["Spirit, sour, sweet", "Spirit, soda, garnish only", "Cream, spirit, sugar", "Spirit and bitters only"], correctIndex: 0, explanation: "All three are variations on the spirit + sour + sweet template."),
                        QuizQuestion(id: "q2", prompt: "What does adding egg white to a sour primarily provide?", choices: ["Extra sweetness", "A silky texture and foam cap", "More alcohol", "A stronger sour taste"], correctIndex: 1, explanation: "Egg white adds body and a foam layer through aeration, not flavor strength.")
                    ]
                ),
                Lesson(
                    id: "les-highballs",
                    title: "Highballs & Built Drinks",
                    estimatedMinutes: 4,
                    blocks: [
                        ContentBlock(kind: .heading, text: "Spirit + Mixer, Lengthened"),
                        ContentBlock(kind: .paragraph, text: "A highball is simply a spirit topped with a larger volume of a non-alcoholic mixer — soda, tonic, ginger beer, or juice — served in a tall glass over ice. Moscow Mule, Paloma, and Tom Collins all fit this shape."),
                        ContentBlock(kind: .bullet, text: "Build directly in the serving glass, spirit first then mixer"),
                        ContentBlock(kind: .bullet, text: "Stir gently just once or twice to combine without losing carbonation"),
                        ContentBlock(kind: .bullet, text: "Fresh citrus is often added for brightness before topping with the mixer"),
                        ContentBlock(kind: .tip, text: "Highballs are the easiest category to make consistently well — the mixer does a lot of the work.")
                    ],
                    quiz: [
                        QuizQuestion(id: "q1", prompt: "What defines a highball-style drink?", choices: ["Shaken with egg white", "Spirit topped with a larger volume of mixer, served long", "Always served without ice", "Blended with crushed ice"], correctIndex: 1, explanation: "Highballs lengthen a spirit with a non-alcoholic mixer in a tall glass."),
                        QuizQuestion(id: "q2", prompt: "Why should you stir a highball only gently and briefly?", choices: ["To avoid diluting it at all", "To preserve carbonation from the mixer", "Stirring highballs is unnecessary and skipped entirely", "To keep the ice from melting"], correctIndex: 1, explanation: "Over-stirring knocks the fizz out of a carbonated mixer.")
                    ]
                ),
                Lesson(
                    id: "les-old-fashioned-template",
                    title: "Spirit-Forward Stirred Drinks",
                    estimatedMinutes: 5,
                    blocks: [
                        ContentBlock(kind: .heading, text: "Spirit + Sweetener/Modifier + Bitters"),
                        ContentBlock(kind: .paragraph, text: "Old Fashioned, Manhattan, Negroni, and Martini are all 'spirit-forward' — mostly or entirely alcohol, stirred (not shaken) to control dilution, and served either over one large cube or up in a coupe."),
                        ContentBlock(kind: .bullet, text: "Old Fashioned: spirit + sugar + bitters, built"),
                        ContentBlock(kind: .bullet, text: "Manhattan: whiskey + sweet vermouth + bitters, stirred"),
                        ContentBlock(kind: .bullet, text: "Negroni: equal parts gin, vermouth, Campari, stirred"),
                        ContentBlock(kind: .tip, text: "A large ice cube melts slower than small cubes, keeping these strong drinks cold without over-diluting them.")
                    ],
                    quiz: [
                        QuizQuestion(id: "q1", prompt: "Why do bartenders use one large ice cube in spirit-forward drinks?", choices: ["It melts faster for quick dilution", "It melts slower, limiting over-dilution", "It's purely decorative", "It's required by the original recipe only"], correctIndex: 1, explanation: "Large-format ice has less surface area relative to volume, so it melts slower."),
                        QuizQuestion(id: "q2", prompt: "The Negroni is built from equal parts of which three ingredients?", choices: ["Gin, vermouth, Campari", "Whiskey, vermouth, bitters", "Gin, tonic, lime", "Rum, lime, sugar"], correctIndex: 0, explanation: "The Negroni's simple equal-parts formula is gin, sweet vermouth, and Campari.")
                    ]
                )
            ]
        ),

        // MARK: - Module 5: Classic Cocktails Deep Dive
        Module(
            id: "mod-classics",
            title: "Classic Cocktails Deep Dive",
            subtitle: "The IBA canon, explained",
            icon: "star.fill",
            lessons: [
                Lesson(
                    id: "les-unforgettables",
                    title: "The Unforgettables",
                    estimatedMinutes: 5,
                    blocks: [
                        ContentBlock(kind: .heading, text: "The Foundational Classics"),
                        ContentBlock(kind: .paragraph, text: "The International Bartenders Association groups the oldest, most universally recognized cocktails as 'The Unforgettables' — drinks like the Martini, Manhattan, Negroni, Daiquiri, and Old Fashioned. These are the recipes every bartender is expected to know by heart."),
                        ContentBlock(kind: .bullet, text: "Explore the full list in the Library tab, filtered by 'The Unforgettables'"),
                        ContentBlock(kind: .bullet, text: "Notice how many share the same building blocks you already learned"),
                        ContentBlock(kind: .tip, text: "Mastering these ~10 drinks gives you a strong foundation for nearly any bar menu.")
                    ],
                    quiz: [
                        QuizQuestion(id: "q1", prompt: "What does the IBA's 'Unforgettables' category represent?", choices: ["The newest trending cocktails", "The oldest, most universally known classics", "Only non-alcoholic drinks", "Drinks invented after 2000"], correctIndex: 1, explanation: "Unforgettables are the long-established, foundational classics every bartender should know."),
                        QuizQuestion(id: "q2", prompt: "Which of these is part of the Unforgettables category?", choices: ["Espresso Martini", "Aperol Spritz", "Negroni", "Paloma"], correctIndex: 2, explanation: "The Negroni is one of the oldest and most iconic Unforgettables.")
                    ]
                ),
                Lesson(
                    id: "les-new-era-contemporary",
                    title: "New Era & Contemporary Classics",
                    estimatedMinutes: 5,
                    blocks: [
                        ContentBlock(kind: .heading, text: "Newer, but Still Classic"),
                        ContentBlock(kind: .paragraph, text: "'New Era Classics' and 'Contemporary Classics' cover cocktails invented more recently — often 20th century creations like the Cosmopolitan and Espresso Martini, or drinks that surged in popularity more recently, like the Aperol Spritz and Paloma."),
                        ContentBlock(kind: .bullet, text: "New Era Classics: Cosmopolitan, Espresso Martini, Mai Tai, Moscow Mule, French 75, Aviation, Tom Collins, Sazerac"),
                        ContentBlock(kind: .bullet, text: "Contemporary Classics: Paloma, Dark 'n' Stormy, Aperol Spritz, Boulevardier, Last Word, Caipirinha, Gimlet, Bloody Mary, Pisco Sour"),
                        ContentBlock(kind: .tip, text: "Trends come and go, but a drink earns 'classic' status by staying on menus decade after decade.")
                    ],
                    quiz: [
                        QuizQuestion(id: "q1", prompt: "The Espresso Martini is generally classified as a:", choices: ["The Unforgettable", "New Era Classic", "Frozen drink only", "Non-alcoholic mocktail"], correctIndex: 1, explanation: "Invented in the late 1980s, the Espresso Martini is a New Era Classic."),
                        QuizQuestion(id: "q2", prompt: "What generally distinguishes a 'Contemporary Classic'?", choices: ["It must contain egg white", "Recent popularity but proven staying power", "It must be non-alcoholic", "It must be served frozen"], correctIndex: 1, explanation: "Contemporary Classics are newer drinks that have proven durable enough to be considered classics.")
                    ]
                )
            ]
        ),

        // MARK: - Module 6: Service, Etiquette & Responsible Service
        Module(
            id: "mod-service",
            title: "Service & Responsible Pouring",
            subtitle: "How to run a great, safe bar experience",
            icon: "person.2.fill",
            lessons: [
                Lesson(
                    id: "les-guest-service",
                    title: "Guest Service & Bar Etiquette",
                    estimatedMinutes: 4,
                    blocks: [
                        ContentBlock(kind: .heading, text: "Reading the Room"),
                        ContentBlock(kind: .paragraph, text: "Great bartending is as much about hospitality as it is about drinks. Greeting guests promptly, remembering preferences, and reading the pace of a room are core skills."),
                        ContentBlock(kind: .bullet, text: "Acknowledge new guests within moments of arrival, even if you can't serve them yet"),
                        ContentBlock(kind: .bullet, text: "Ask about spirit preferences and tolerance for strong/bitter flavors before recommending a drink"),
                        ContentBlock(kind: .bullet, text: "Keep recommendations simple: one clarifying question is usually enough"),
                        ContentBlock(kind: .tip, text: "A confident, friendly recommendation builds more trust than a long list of options.")
                    ],
                    quiz: [
                        QuizQuestion(id: "q1", prompt: "What should you do soon after a new guest sits at the bar?", choices: ["Ignore them until you're fully free", "Acknowledge them right away", "Wait for them to wave you down", "Ask for payment upfront"], correctIndex: 1, explanation: "A quick acknowledgment reassures guests they've been seen, even if you're busy."),
                        QuizQuestion(id: "q2", prompt: "Before recommending a cocktail to a new guest, it helps to ask about:", choices: ["Their favorite football team", "Spirit and flavor preferences", "Their home address", "Nothing — always recommend the same drink"], correctIndex: 1, explanation: "Understanding flavor and spirit preference leads to a recommendation the guest will actually enjoy.")
                    ]
                ),
                Lesson(
                    id: "les-responsible-service",
                    title: "Responsible Beverage Service",
                    estimatedMinutes: 5,
                    blocks: [
                        ContentBlock(kind: .heading, text: "Serving Safely and Legally"),
                        ContentBlock(kind: .paragraph, text: "Bartenders carry real responsibility for guest and public safety. Rules vary by region, but the core principles are universal."),
                        ContentBlock(kind: .bullet, text: "Always verify legal drinking age with valid ID when there's any doubt"),
                        ContentBlock(kind: .bullet, text: "Learn to recognize signs of intoxication: slurred speech, unsteady balance, impaired judgment"),
                        ContentBlock(kind: .bullet, text: "It's both a legal and ethical duty to refuse service to a visibly intoxicated guest"),
                        ContentBlock(kind: .bullet, text: "Offer water and food alongside alcohol to help guests pace themselves"),
                        ContentBlock(kind: .warning, text: "Never serve a guest who is clearly intoxicated, even under social or financial pressure to keep selling.")
                    ],
                    quiz: [
                        QuizQuestion(id: "q1", prompt: "What should a bartender do if a guest appears visibly intoxicated?", choices: ["Serve them a weaker drink", "Refuse further service", "Serve doubles to finish them off faster", "Ignore it if they're a regular"], correctIndex: 1, explanation: "Refusing service to a visibly intoxicated guest is both a legal and ethical responsibility."),
                        QuizQuestion(id: "q2", prompt: "Which is a common visible sign of intoxication?", choices: ["Slurred speech and unsteady balance", "Ordering water", "Speaking more quietly than usual", "Paying with a credit card"], correctIndex: 0, explanation: "Slurred speech and poor balance are classic, observable signs of intoxication."),
                        QuizQuestion(id: "q3", prompt: "What's one simple way to help guests pace their drinking?", choices: ["Refusing to serve any water", "Offering water and food alongside alcohol", "Serving drinks faster", "Increasing pour sizes"], correctIndex: 1, explanation: "Water and food help slow alcohol absorption and encourage responsible pacing.")
                    ]
                ),
                Lesson(
                    id: "les-bar-setup",
                    title: "Bar Setup & Workflow",
                    estimatedMinutes: 4,
                    blocks: [
                        ContentBlock(kind: .heading, text: "Mise en Place for Bartenders"),
                        ContentBlock(kind: .paragraph, text: "Just like chefs, bartenders rely on 'mise en place' — everything prepped and in its place — to work quickly and accurately during a rush."),
                        ContentBlock(kind: .bullet, text: "Prep garnishes, syrups, and citrus juice before service starts"),
                        ContentBlock(kind: .bullet, text: "Arrange your station so your most-used bottles and tools are within easy reach"),
                        ContentBlock(kind: .bullet, text: "Keep ice well-stocked — running out mid-rush is one of the most common service failures"),
                        ContentBlock(kind: .tip, text: "A well-organized station lets you build drinks by muscle memory, freeing your attention for guests.")
                    ],
                    quiz: [
                        QuizQuestion(id: "q1", prompt: "What does 'mise en place' mean for a bartender?", choices: ["Cleaning up after close only", "Having everything prepped and organized before service", "A specific cocktail recipe", "The bar's opening hours"], correctIndex: 1, explanation: "Mise en place means being fully prepped and organized before service begins."),
                        QuizQuestion(id: "q2", prompt: "Why is keeping ice well-stocked especially important?", choices: ["It's purely decorative", "Running out mid-rush is a common, disruptive failure", "Ice is rarely used in cocktails", "It only matters for frozen drinks"], correctIndex: 1, explanation: "Ice is used in nearly every cocktail, so running low during a rush can halt service.")
                    ]
                )
            ]
        )
    ]

    static var allLessons: [Lesson] {
        modules.flatMap { $0.lessons }
    }

    static func lesson(byID id: String) -> Lesson? {
        allLessons.first { $0.id == id }
    }

    static var allQuizQuestions: [QuizQuestion] {
        allLessons.flatMap { $0.quiz }
    }
}
