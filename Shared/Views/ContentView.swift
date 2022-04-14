//
//  ContentView.swift
//  Shared
//
//  Created by Jinwook Kim on 2022/04/14.
//

import SwiftUI

struct ContentView: View {
    @State private var activePeriod: Period = .Weekly
    private var periodUnit: String {
        switch activePeriod {
        case .Daily:
            return "Day"
        case .Weekly:
            return "Week"
        case .Monthly:
            return "Month"
        }
    }
    private var activeReport: Report {
        return reports[activePeriod]!
    }
    private var activeCurrentRecord: Record {
        return activeReport.currentRecord
    }
    private var activeLastRecord: Record {
        return activeReport.lastRecord
    }
    var body: some View {
        ZStack {
            BackgroundView()
            ScrollView {
                VStack(spacing: Constants.General.wideSpacing) {
                    ProfileView(activePeriod: $activePeriod)
                    VStack(spacing: Constants.General.narrowSpacing) {
                        ItemView(imageName: "Work", colorName: "WorkColor", title: "Work", hourAmount: activeCurrentRecord.workHours, lastHourAmount: activeLastRecord.workHours, periodUnit: periodUnit)
                        ItemView(imageName: "Play", colorName: "PlayColor", title: "Play", hourAmount: activeCurrentRecord.playHours, lastHourAmount: activeLastRecord.playHours, periodUnit: periodUnit)
                        ItemView(imageName: "Study", colorName: "StudyColor", title: "Study", hourAmount: activeCurrentRecord.studyHours, lastHourAmount: activeLastRecord.studyHours, periodUnit: periodUnit)
                        ItemView(imageName: "Exercise", colorName: "ExerciseColor", title: "Exercise", hourAmount: activeCurrentRecord.exerciseHours, lastHourAmount: activeLastRecord.exerciseHours, periodUnit: periodUnit)
                        ItemView(imageName: "Social", colorName: "SocialColor", title: "Social", hourAmount: activeCurrentRecord.socialHours, lastHourAmount: activeLastRecord.socialHours, periodUnit: periodUnit)
                        ItemView(imageName: "SelfCare", colorName: "SelfCareColor", title: "Self Care", hourAmount: activeCurrentRecord.selfCareHours, lastHourAmount: activeLastRecord.selfCareHours, periodUnit: periodUnit)
                    }
                }
                .padding()
                .shadow(radius: Constants.General.shadowRadius)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
