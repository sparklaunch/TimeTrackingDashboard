//
//  ProfileHeaderView.swift
//  Time Tracking Dashboard (iOS)
//
//  Created by Jinwook Kim on 2022/04/14.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        ZStack {
            Color("ProfileColor")
            HStack(spacing: 16) {
                Image(decorative: "Jeremy")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .overlay(
                        Circle()
                            .strokeBorder(.white, lineWidth: 3)
                    )
                VStack(alignment: .leading) {
                    Text("Report for")
                        .font(.title3)
                        .fontWeight(.light)
                        .foregroundColor(.white.opacity(0.5))
                    Text("Jeremy Robson")
                        .font(.title)
                        .fontWeight(.regular)
                        .foregroundColor(.white)
                }
            }
            .padding(24)
        }
        .fixedSize(horizontal: false, vertical: true)
        .cornerRadius(15)
        .background(Color("CardColor"))
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
            .previewLayout(.sizeThatFits)
    }
}
