//
//  ItemView.swift
//  Time Tracking Dashboard (iOS)
//
//  Created by Jinwook Kim on 2022/04/14.
//

import SwiftUI

struct ItemView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            ItemBackgroundView(imageName: "Work", colorName: "WorkColor")
            ItemContentView(title: "Work", hourAmount: 32, lastHourAmount: 36)
        }
        .shadow(radius: 10)
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView()
            .previewLayout(.sizeThatFits)
    }
}
