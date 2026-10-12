import SwiftUI

struct LessonQuizView: View {
    let lesson: Lesson
    let progress: UserProgress

    @State private var currentIndex = 0
    @State private var selectedChoice: Int?
    @State private var isAnswered = false
    @State private var correctCount = 0
    @State private var finished = false
    @Environment(\.dismiss) private var dismiss

    private var question: QuizQuestion { lesson.quiz[currentIndex] }
    private var isLastQuestion: Bool { currentIndex == lesson.quiz.count - 1 }

    var body: some View {
        Group {
            if finished {
                resultView
            } else {
                questionView
            }
        }
        .navigationTitle("Lesson Quiz")
        .navigationBarTitleDisplayMode(.inline)
    }

    private var questionView: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Question \(currentIndex + 1) of \(lesson.quiz.count)")
                .font(.caption)
                .foregroundStyle(.secondary)

            Text(question.prompt)
                .font(.title3.weight(.semibold))

            VStack(spacing: 10) {
                ForEach(question.choices.indices, id: \.self) { idx in
                    choiceButton(idx)
                }
            }

            if isAnswered {
                Text(question.explanation)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    .padding(10)
                    .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 10))

                Button(isLastQuestion ? "Finish" : "Next Question") {
                    advance()
                }
                .font(.headline)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.orange, in: RoundedRectangle(cornerRadius: 14))
                .foregroundStyle(.white)
            }

            Spacer()
        }
        .padding()
    }

    private func choiceButton(_ idx: Int) -> some View {
        let isCorrect = idx == question.correctIndex
        let isSelected = idx == selectedChoice
        var background: Color = Color.gray.opacity(0.12)
        if isAnswered {
            if isCorrect { background = .green.opacity(0.25) }
            else if isSelected { background = .red.opacity(0.25) }
        } else if isSelected {
            background = .orange.opacity(0.25)
        }

        return Button {
            guard !isAnswered else { return }
            selectedChoice = idx
            isAnswered = true
            if isCorrect { correctCount += 1 }
        } label: {
            HStack {
                Text(question.choices[idx])
                Spacer()
                if isAnswered && isCorrect {
                    Image(systemName: "checkmark.circle.fill").foregroundStyle(.green)
                } else if isAnswered && isSelected {
                    Image(systemName: "xmark.circle.fill").foregroundStyle(.red)
                }
            }
            .padding()
            .background(background, in: RoundedRectangle(cornerRadius: 12))
            .foregroundStyle(.primary)
        }
        .disabled(isAnswered)
    }

    private func advance() {
        if isLastQuestion {
            finished = true
            let percent = Int((Double(correctCount) / Double(lesson.quiz.count)) * 100)
            progress.recordQuizScore(quizID: lesson.id, percent: percent)
            progress.markLessonComplete(lesson.id)
        } else {
            currentIndex += 1
            selectedChoice = nil
            isAnswered = false
        }
    }

    private var resultView: some View {
        VStack(spacing: 20) {
            Image(systemName: correctCount == lesson.quiz.count ? "trophy.fill" : "flag.checkered")
                .font(.system(size: 56))
                .foregroundStyle(.orange)
            Text("You scored \(correctCount)/\(lesson.quiz.count)")
                .font(.title2.bold())
            Text("Lesson marked complete.")
                .font(.subheadline)
                .foregroundStyle(.secondary)
            Button("Done") { dismiss() }
                .font(.headline)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.orange, in: RoundedRectangle(cornerRadius: 14))
                .foregroundStyle(.white)
                .padding(.horizontal)
        }
        .padding()
    }
}
