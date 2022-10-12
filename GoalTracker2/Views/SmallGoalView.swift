import SwiftUI

struct SmallGoalView: View {
    var goal: Goal
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text(goal.title)
                .font(.subheadline)
                .fontWeight(.medium)
                .fixedSize(horizontal: false, vertical: true)
                .multilineTextAlignment(.center)
                .foregroundColor(Color.black)
            Image(systemName: goal.status.imageName)
                .foregroundColor(goal.status.tint)
                .padding([.leading, .trailing, .bottom])
        }
        .padding(20)
        .frame(width: 150, height: 150, alignment: .center)
        .background(goal.status.tint.opacity(0.2))
        .cornerRadius(150/2)
        
    }
}

struct SmallGoalView_Previews: PreviewProvider {
    static var previews: some View {
        SmallGoalView(goal: Goal(title: "Test goal with many words", status: .complete))
    }
}
