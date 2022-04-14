//
//  PeriodButtonView.swift
//  Time Tracking Dashboard (iOS)
//
//  Created by Jinwook Kim on 2022/04/14.
//

import SwiftUI

struct PeriodButtonView: View {
    let text: String
    @Binding var activePeriod: Period
    var body: some View {
        Button {
            withAnimation(.spring(response: 0.3, dampingFraction: 0.6, blendDuration: .zero)) {
                activePeriod = Period(rawValue: text)!
            }
        } label: {
            Text(text)
                .font(.title3)
                .fontWeight(.regular)
                .foregroundColor(.white.opacity(text == activePeriod.rawValue ? 1 : 0.5))
        }
        .frame(maxWidth: .infinity)
    }
}

struct PeriodButtonView_Previews: PreviewProvider {
    static var previews: some View {
        PeriodButtonView(text: "Weekly", activePeriod: .constant(.Weekly))
            .background(Color("CardColor"))
            .previewLayout(.sizeThatFits)
    }
}
