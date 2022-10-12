//
//  HomeViewModel.swift
//  GoalTracker2
//
//  Created by Deborah Newberry on 10/11/22.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    @Published var date: Date = .now
    @Published var user: User
    @Published var goals: [Goal]
    
    init(user: User) {
        self.user = user
        
        // TODO Call service
        goals = [
            Goal(title: "Walk 2mi", status: .complete),
            Goal(title: "Study Japanese", status: .incomplete),
            Goal(title: "Practice SwiftUI", status: .inProgress),
            Goal(title: "Drink 64oz of Water", status: .inProgress),
        ]
    }
}
