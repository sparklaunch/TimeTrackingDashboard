//
//  ItemBackgroundView.swift
//  Time Tracking Dashboard (iOS)
//
//  Created by Jinwook Kim on 2022/04/14.
//

import SwiftUI

struct ItemBackgroundView: View {
    let imageName: String
    let colorName: String
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Color(colorName)
            Image(decorative: imageName)
                .resizable()
                .frame(width: 100, height: 100)
                .offset(x: -15, y: -15)
        }
        .frame(height: 180)
        .cornerRadius(15)
    }
}

struct ItemBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        ItemBackgroundView(imageName: "Work", colorName: "WorkColor")
            .previewLayout(.sizeThatFits)
    }
}
