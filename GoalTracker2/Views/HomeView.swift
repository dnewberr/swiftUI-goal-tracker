//
//  HomeView.swift
//  GoalTracker2
//
//  Created by Deborah Newberry on 10/11/22.
//

import SwiftUI
import Combine

struct HomeView: View {
    @ObservedObject var viewModel: HomeViewModel
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Welcome, \(viewModel.user.name)")
                    .font(.callout)
                Text(titleFromDate(viewModel.date))
                    .font(.largeTitle)
                ScrollView(.vertical, showsIndicators: true) {
                    VStack(alignment: .leading) {
                        SmallGoalsListView(goals: viewModel.goals)
                    }
                }
            }
            .padding()
            .navigationBarHidden(true)
        }
    }
    
    private func titleFromDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE, MMM d"
        return formatter.string(from: date)
    }
}

struct SmallGoalsListView: View {
    var goals: [Goal]
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(alignment: .center) {
                ForEach(goals) { goal in
                    NavigationLink(destination: {
                        GoalDetailView(goal: goal)
                    }, label: {
                        SmallGoalView(goal: goal)
                    })
                }
            }
        }
    }
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        let vm = HomeViewModel(user: User(name: "Deborah"))
        HomeView(viewModel: vm)
    }
}
