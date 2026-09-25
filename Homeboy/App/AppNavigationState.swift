import Foundation

/// Holds the sidebar selection so any detail view (e.g. Activity) can drive
/// navigation without ContentView passing bindings through every layer.
@MainActor
final class AppNavigationState: ObservableObject {
    @Published var selectedItem: NavigationItem? = .activity

    func openMission(_ missionId: String) {
        selectedItem = .missions
    }
}
