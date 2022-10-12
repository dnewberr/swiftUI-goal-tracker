//
//  ContentView.swift
//  GoalTracker2
//
//  Created by Deborah Newberry on 10/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let vm = HomeViewModel(user: .init(name: "Deborah"))
        HomeView(viewModel: vm)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
