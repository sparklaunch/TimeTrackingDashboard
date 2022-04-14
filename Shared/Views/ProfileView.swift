//
//  ProfileView.swift
//  Time Tracking Dashboard (iOS)
//
//  Created by Jinwook Kim on 2022/04/14.
//

import SwiftUI

struct ProfileView: View {
    @Binding var activePeriod: Period
    var body: some View {
        VStack(spacing: .zero) {
            ProfileHeaderView()
            PeriodButtonsView(activePeriod: $activePeriod)
        }
        .fixedSize(horizontal: false, vertical: true)
        .cornerRadius(Constants.General.cornerRadius)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(activePeriod: .constant(.Weekly))
            .previewLayout(.sizeThatFits)
    }
}
