//
//  PeriodButtonView.swift
//  Time Tracking Dashboard (iOS)
//
//  Created by Jinwook Kim on 2022/04/14.
//

import SwiftUI

struct PeriodButtonView: View {
    let text: String
    var body: some View {
        Button {

        } label: {
            Text(text)
                .font(.title3)
                .fontWeight(.regular)
                .foregroundColor(.white.opacity(0.5))
        }
    }
}

struct PeriodButtonView_Previews: PreviewProvider {
    static var previews: some View {
        PeriodButtonView(text: "Weekly")
            .background(Color("CardColor"))
            .previewLayout(.sizeThatFits)
    }
}
