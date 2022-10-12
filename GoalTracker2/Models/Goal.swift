import SwiftUI

struct Goal: Identifiable {
    let id = UUID()
    let title: String
    let status: GoalStatus
    var completionRate: Int {
        Int.random(in: 0...100)
    }
}

enum GoalStatus {
    case complete, incomplete, inProgress
    
    var imageName: String {
        switch self {
        case .complete: return "checkmark.circle.fill"
        case .incomplete: return "xmark.circle"
        case .inProgress: return "ellipsis.circle.fill"
        }
    }
    
    var tint: Color {
        switch self {
        case .complete: return .green
        case .incomplete: return .gray
        case .inProgress: return .yellow
        }
    }
}
