//
//  PeriodButtonsView.swift
//  Time Tracking Dashboard (iOS)
//
//  Created by Jinwook Kim on 2022/04/14.
//

import SwiftUI

struct PeriodButtonsView: View {
    @Binding var activePeriod: String
    var body: some View {
        ZStack {
            Color("CardColor")
            HStack {
                PeriodButtonView(text: "Daily", isActive: activePeriod == "Daily")
                PeriodButtonView(text: "Weekly", isActive: activePeriod == "Weekly")
                PeriodButtonView(text: "Monthly", isActive: activePeriod == "Monthly")
            }
            .padding(24)
        }
        .fixedSize(horizontal: false, vertical: true)
    }
}

struct PeriodButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        PeriodButtonsView(activePeriod: .constant("Weekly"))
            .previewLayout(.sizeThatFits)
    }
}
