//
//  ItemContentView.swift
//  Time Tracking Dashboard (iOS)
//
//  Created by Jinwook Kim on 2022/04/14.
//

import SwiftUI

struct ItemContentView: View {
    let title: String
    let hourAmount: Int
    let lastHourAmount: Int
    var body: some View {
        ZStack {
            Color("CardColor")
            VStack {
                HStack {
                    Text(title)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Spacer()
                    Button {
                        // TODO: SHOW MORE FUNCTIONALITY.
                    } label: {
                        Image(decorative: "Ellipsis")
                            .resizable()
                            .frame(width: 21, height: 5)
                    }
                }
                HStack(alignment: .top) {
                    Text("\(hourAmount)hrs")
                        .font(.largeTitle)
                        .fontWeight(.light)
                        .foregroundColor(.white)
                    Spacer()
                    Text("Last Week - \(lastHourAmount)hrs")
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
        ItemContentView(title: "Work", hourAmount: 32, lastHourAmount: 36)
            .previewLayout(.sizeThatFits)
    }
}
