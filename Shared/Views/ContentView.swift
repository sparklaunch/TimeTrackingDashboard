//
//  ContentView.swift
//  Shared
//
//  Created by Jinwook Kim on 2022/04/14.
//

import SwiftUI

struct ContentView: View {
    @State private var activePeriod: String = "Weekly"
    private var periodUnit: String {
        switch activePeriod {
        case "Daily":
            return "Day"
        case "Weekly":
            return "Week"
        case "Monthly":
            return "Month"
        default:
            return "N/A"
        }
    }
    var body: some View {
        ZStack {
            BackgroundView()
            VStack(spacing: 24) {
                ProfileView(activePeriod: $activePeriod)
                VStack {
                    ItemView(imageName: "Work", colorName: "WorkColor", title: "Work", hourAmount: 32, lastHourAmount: 36, periodUnit: periodUnit)
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
