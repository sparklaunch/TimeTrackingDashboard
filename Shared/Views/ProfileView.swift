//
//  ProfileView.swift
//  Time Tracking Dashboard (iOS)
//
//  Created by Jinwook Kim on 2022/04/14.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(spacing: .zero) {
            ProfileHeaderView()
            PeriodButtonsView()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .previewLayout(.sizeThatFits)
    }
}
