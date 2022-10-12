import SwiftUI

struct GoalDetailView: View {
    var goal: Goal
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(goal.title)
                .font(.largeTitle)
            Text("Completion rate: \(goal.completionRate)")
        }
    }
}
struct GoalDetailView_Previews: PreviewProvider {
    static var previews: some View {
        GoalDetailView(goal: Goal(title: "Test goal with many words", status: .complete))
    }
}
