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
            ScrollView {
                VStack(spacing: 24) {
                    ProfileView(activePeriod: $activePeriod)
                    VStack(spacing: 16) {
                        ItemView(imageName: "Work", colorName: "WorkColor", title: "Work", hourAmount: 32, lastHourAmount: 36, periodUnit: periodUnit)
                        ItemView(imageName: "Play", colorName: "PlayColor", title: "Play", hourAmount: 10, lastHourAmount: 8, periodUnit: periodUnit)
                        ItemView(imageName: "Study", colorName: "StudyColor", title: "Study", hourAmount: 4, lastHourAmount: 7, periodUnit: periodUnit)
                        ItemView(imageName: "Exercise", colorName: "ExerciseColor", title: "Exercise", hourAmount: 4, lastHourAmount: 5, periodUnit: periodUnit)
                        ItemView(imageName: "Social", colorName: "SocialColor", title: "Social", hourAmount: 5, lastHourAmount: 10, periodUnit: periodUnit)
                        ItemView(imageName: "SelfCare", colorName: "SelfCareColor", title: "Self Care", hourAmount: 2, lastHourAmount: 2, periodUnit: periodUnit)
                    }
                }
                .padding()
            .shadow(radius: 10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
