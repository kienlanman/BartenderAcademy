import SwiftUI

struct FlashcardDeckView: View {
    let progress: UserProgress
    let initialCategory: FlashcardCategory?

    @State private var queue: [Flashcard] = []
    @State private var isFlipped = false
    @State private var reviewedCount = 0
    @Environment(\.dismiss) private var dismiss

    private var deckTitle: String { initialCategory?.rawValue ?? "All Cards" }
    private var totalCount: Int {
        (initialCategory == nil ? FlashcardData.all : FlashcardData.all.filter { $0.category == initialCategory }).count
    }

    var body: some View {
        VStack(spacing: 20) {
            if let card = queue.first {
                Text("\(reviewedCount + 1) of \(totalCount)")
                    .font(.caption)
                    .foregroundStyle(.secondary)

                cardView(card)
                    .onTapGesture { isFlipped.toggle() }

                if isFlipped {
                    HStack(spacing: 16) {
                        Button {
                            rate(card, remembered: false)
                        } label: {
                            Text("Again").font(.headline).frame(maxWidth: .infinity).padding()
                                .background(Color.red.opacity(0.15), in: RoundedRectangle(cornerRadius: 14))
                                .foregroundStyle(.red)
                        }
                        Button {
                            rate(card, remembered: true)
                        } label: {
                            Text("Good").font(.headline).frame(maxWidth: .infinity).padding()
                                .background(Color.green.opacity(0.15), in: RoundedRectangle(cornerRadius: 14))
                                .foregroundStyle(.green)
                        }
                    }
                } else {
                    Text("Tap the card to reveal the answer")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
            } else {
                EmptyStateView(icon: "checkmark.seal.fill", title: "Deck complete!", message: "You reviewed all \(totalCount) cards in this deck.")
                Button("Done") { dismiss() }
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.orange, in: RoundedRectangle(cornerRadius: 14))
                    .foregroundStyle(.white)
                    .padding(.horizontal)
            }
        }
        .padding()
        .navigationTitle(deckTitle)
        .navigationBarTitleDisplayMode(.inline)
        .onAppear { setupQueue() }
    }

    private func cardView(_ card: Flashcard) -> some View {
        VStack {
            Spacer()
            Text(isFlipped ? card.back : card.front)
                .font(isFlipped ? .body : .title3.weight(.semibold))
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
            PillTag(text: card.category.rawValue, color: .blue)
        }
        .frame(maxWidth: .infinity, minHeight: 260)
        .padding()
        .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 20))
    }

    private func setupQueue() {
        let cards = initialCategory == nil ? FlashcardData.all : FlashcardData.all.filter { $0.category == initialCategory }
        let boxes = progress.flashcardBoxes
        queue = cards.sorted { (boxes[$0.id] ?? 0) < (boxes[$1.id] ?? 0) }
    }

    private func rate(_ card: Flashcard, remembered: Bool) {
        let currentBox = progress.flashcardBoxes[card.id] ?? 0
        progress.setFlashcardBox(card.id, box: remembered ? currentBox + 1 : 0)
        reviewedCount += 1
        isFlipped = false
        if !queue.isEmpty { queue.removeFirst() }
    }
}
