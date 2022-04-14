//
//  ItemContentView.swift
//  Time Tracking Dashboard (iOS)
//
//  Created by Jinwook Kim on 2022/04/14.
//

import SwiftUI

struct ItemContentView: View {
    var body: some View {
        ZStack {
            Color("CardColor")
            VStack {
                HStack {
                    Text("Work")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Spacer()
                    Image(decorative: "Ellipsis")
                        .resizable()
                        .frame(width: 21, height: 5)
                }
                HStack(alignment: .top) {
                    Text("32hrs")
                        .font(.largeTitle)
                        .fontWeight(.light)
                        .foregroundColor(.white)
                    Spacer()
                    Text("Last Week - 36hrs")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.white.opacity(0.5))
                }
            }
            .padding(24)
        }
        .fixedSize(horizontal: false, vertical: true)
        .cornerRadius(15)
    }
}

struct ItemContentView_Previews: PreviewProvider {
    static var previews: some View {
        ItemContentView()
            .previewLayout(.sizeThatFits)
    }
}
