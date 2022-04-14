//
//  PeriodButtonsView.swift
//  Time Tracking Dashboard (iOS)
//
//  Created by Jinwook Kim on 2022/04/14.
//

import SwiftUI

struct PeriodButtonsView: View {
    var body: some View {
        ZStack {
            Color("CardColor")
            HStack {
                PeriodButtonView(text: "Daily")
                PeriodButtonView(text: "Weekly")
                PeriodButtonView(text: "Monthly")
            }
        }
    }
}

struct PeriodButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        PeriodButtonsView()
            .previewLayout(.sizeThatFits)
    }
}
