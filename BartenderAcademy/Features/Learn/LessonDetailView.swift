import SwiftUI

struct LessonDetailView: View {
    let lesson: Lesson
    let progress: UserProgress

    private var isComplete: Bool { progress.completedLessonIDs.contains(lesson.id) }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                HStack {
                    Text(lesson.title).font(.title2.bold())
                    Spacer()
                    if isComplete {
                        Label("Done", systemImage: "checkmark.circle.fill")
                            .font(.caption.weight(.semibold))
                            .foregroundStyle(.green)
                    }
                }
                Text("\(lesson.estimatedMinutes) min read")
                    .font(.caption)
                    .foregroundStyle(.secondary)

                ForEach(lesson.blocks) { block in
                    blockView(block)
                }

                if !lesson.quiz.isEmpty {
                    NavigationLink {
                        LessonQuizView(lesson: lesson, progress: progress)
                    } label: {
                        Text(isComplete ? "Retake Quiz" : "Take the Quiz")
                            .font(.headline)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.orange, in: RoundedRectangle(cornerRadius: 14))
                            .foregroundStyle(.white)
                    }
                    .padding(.top, 8)
                }
            }
            .padding()
        }
        .navigationTitle("Lesson")
        .navigationBarTitleDisplayMode(.inline)
    }

    @ViewBuilder
    private func blockView(_ block: ContentBlock) -> some View {
        switch block.kind {
        case .heading:
            Text(block.text).font(.headline).padding(.top, 4)
        case .paragraph:
            Text(block.text).font(.body).foregroundStyle(.primary)
        case .bullet:
            HStack(alignment: .top, spacing: 8) {
                Text("•")
                Text(block.text)
            }
            .font(.subheadline)
        case .tip:
            HStack(alignment: .top, spacing: 8) {
                Image(systemName: "lightbulb.fill").foregroundStyle(.yellow)
                Text(block.text).font(.subheadline)
            }
            .padding(10)
            .background(Color.yellow.opacity(0.15), in: RoundedRectangle(cornerRadius: 10))
        case .warning:
            HStack(alignment: .top, spacing: 8) {
                Image(systemName: "exclamationmark.triangle.fill").foregroundStyle(.red)
                Text(block.text).font(.subheadline)
            }
            .padding(10)
            .background(Color.red.opacity(0.12), in: RoundedRectangle(cornerRadius: 10))
        }
    }
}
