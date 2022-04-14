//
//  ItemView.swift
//  Time Tracking Dashboard (iOS)
//
//  Created by Jinwook Kim on 2022/04/14.
//

import SwiftUI

struct ItemView: View {
    var body: some View {
        ZStack {
            ZStack {
                Color("WorkColor")
                Image(decorative: "Work")
                    .resizable()
                    .frame(width: 80, height: 80)
            }
            ItemContentView()
        }
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView()
            .previewLayout(.sizeThatFits)
    }
}
