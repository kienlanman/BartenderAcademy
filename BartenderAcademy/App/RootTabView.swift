import SwiftUI
import SwiftData

struct RootTabView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var progresses: [UserProgress]

    var body: some View {
        Group {
            if let progress = progresses.first {
                TabView {
                    HomeView(progress: progress)
                        .tabItem { Label("Home", systemImage: "house.fill") }

                    ModuleListView(progress: progress)
                        .tabItem { Label("Learn", systemImage: "graduationcap.fill") }

                    RecipeListView(progress: progress)
                        .tabItem { Label("Library", systemImage: "wineglass.fill") }

                    PracticeHomeView(progress: progress)
                        .tabItem { Label("Practice", systemImage: "bolt.fill") }

                    ProfileView(progress: progress)
                        .tabItem { Label("Profile", systemImage: "person.crop.circle.fill") }
                }
                .tint(.orange)
            } else {
                ProgressView()
                    .onAppear { createProgressIfNeeded() }
            }
        }
        .onAppear { createProgressIfNeeded() }
    }

    private func createProgressIfNeeded() {
        guard progresses.isEmpty else { return }
        let progress = UserProgress()
        modelContext.insert(progress)
        try? modelContext.save()
    }
}
