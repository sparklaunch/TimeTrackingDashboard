//
//  PeriodButtonView.swift
//  Time Tracking Dashboard (iOS)
//
//  Created by Jinwook Kim on 2022/04/14.
//

import SwiftUI

struct PeriodButtonView: View {
    let text: String
    let isActive: Bool
    var body: some View {
        Button {

        } label: {
            Text(text)
                .font(.title3)
                .fontWeight(.regular)
                .foregroundColor(.white.opacity(isActive ? 1 : 0.5))
        }
        .frame(maxWidth: .infinity)
    }
}

struct PeriodButtonView_Previews: PreviewProvider {
    static var previews: some View {
        PeriodButtonView(text: "Weekly", isActive: true)
            .background(Color("CardColor"))
            .previewLayout(.sizeThatFits)
    }
}
