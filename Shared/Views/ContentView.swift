//
//  ContentView.swift
//  Shared
//
//  Created by Jinwook Kim on 2022/04/14.
//

import SwiftUI

struct ContentView: View {
    @State private var activePeriod: String = "Weekly"
    var body: some View {
        ZStack {
            BackgroundView()
            VStack(spacing: 24) {
                ProfileView(activePeriod: $activePeriod)
                VStack {
                    ItemView()
                }
            }
            .padding()
            .shadow(radius: 10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
