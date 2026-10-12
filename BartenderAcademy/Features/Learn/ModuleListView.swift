import SwiftUI

struct ModuleListView: View {
    let progress: UserProgress

    var body: some View {
        NavigationStack {
            List {
                ForEach(CurriculumData.modules) { module in
                    Section {
                        ForEach(module.lessons) { lesson in
                            NavigationLink(value: lesson) {
                                lessonRow(lesson)
                            }
                        }
                    } header: {
                        HStack {
                            Image(systemName: module.icon)
                            VStack(alignment: .leading) {
                                Text(module.title)
                                Text(module.subtitle).font(.caption2).textCase(nil)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Learn")
            .navigationDestination(for: Lesson.self) { lesson in
                LessonDetailView(lesson: lesson, progress: progress)
            }
        }
    }

    private func lessonRow(_ lesson: Lesson) -> some View {
        let isComplete = progress.completedLessonIDs.contains(lesson.id)
        return HStack {
            Image(systemName: isComplete ? "checkmark.circle.fill" : "circle")
                .foregroundStyle(isComplete ? .green : .secondary)
            VStack(alignment: .leading, spacing: 2) {
                Text(lesson.title).font(.subheadline.weight(.medium))
                Text("\(lesson.estimatedMinutes) min • \(lesson.quiz.count) question quiz")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
        }
    }
}
