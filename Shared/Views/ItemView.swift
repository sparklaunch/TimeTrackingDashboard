//
//  ItemView.swift
//  Time Tracking Dashboard (iOS)
//
//  Created by Jinwook Kim on 2022/04/14.
//

import SwiftUI

struct ItemView: View {
    let imageName: String
    let colorName: String
    let title: String
    let hourAmount: Int
    let lastHourAmount: Int
    let periodUnit: String
    var body: some View {
        ZStack(alignment: .bottom) {
            ItemBackgroundView(imageName: imageName, colorName: colorName)
            ItemContentView(title: title, hourAmount: hourAmount, lastHourAmount: lastHourAmount, periodUnit: periodUnit)
        }
        .shadow(radius: 10)
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(imageName: "Work", colorName: "WorkColor", title: "Work", hourAmount: 32, lastHourAmount: 36, periodUnit: "Week")
            .previewLayout(.sizeThatFits)
    }
}
