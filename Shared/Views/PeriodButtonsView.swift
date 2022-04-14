//
//  PeriodButtonsView.swift
//  Time Tracking Dashboard (iOS)
//
//  Created by Jinwook Kim on 2022/04/14.
//

import SwiftUI

struct PeriodButtonsView: View {
    @Binding var activePeriod: Period
    var body: some View {
        ZStack {
            Color("CardColor")
            HStack {
                PeriodButtonView(text: "Daily", activePeriod: $activePeriod)
                PeriodButtonView(text: "Weekly", activePeriod: $activePeriod)
                PeriodButtonView(text: "Monthly", activePeriod: $activePeriod)
            }
            .padding(Constants.General.widePadding)
        }
        .fixedSize(horizontal: false, vertical: true)
    }
}

struct PeriodButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        PeriodButtonsView(activePeriod: .constant(.Weekly))
            .previewLayout(.sizeThatFits)
    }
}
