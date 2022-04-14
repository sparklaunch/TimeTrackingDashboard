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
    private var hourAmountString: String {
        if hourAmount == 1 {
            return "\(hourAmount)hr"
        }
        else {
            return "\(hourAmount)hrs"
        }
    }
    let lastHourAmount: Int
    private var lastHourAmountString: String {
        if lastHourAmount == 1 {
            return "\(lastHourAmount)hr"
        }
        else {
            return "\(lastHourAmount)hrs"
        }
    }
    let periodUnit: String
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
                    Text(hourAmountString)
                        .font(.largeTitle)
                        .fontWeight(.light)
                        .foregroundColor(.white)
                    Spacer()
                    Text("Last \(periodUnit) - \(lastHourAmountString)")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.white.opacity(0.5))
                }
            }
            .padding(Constants.General.widePadding)
        }
        .fixedSize(horizontal: false, vertical: true)
        .cornerRadius(Constants.General.cornerRadius)
    }
}

struct ItemContentView_Previews: PreviewProvider {
    static var previews: some View {
        ItemContentView(title: "Work", hourAmount: 32, lastHourAmount: 36, periodUnit: "Week")
            .previewLayout(.sizeThatFits)
    }
}
