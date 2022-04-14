//
//  Storage.swift
//  Time Tracking Dashboard (iOS)
//
//  Created by Jinwook Kim on 2022/04/14.
//

import Foundation

enum Period: String {
    case Daily
    case Weekly
    case Monthly
}

struct Record {
    let workHours: Int = Int.random(in: 1...24)
    let playHours: Int = Int.random(in: 1...24)
    let studyHours: Int = Int.random(in: 1...24)
    let exerciseHours: Int = Int.random(in: 1...24)
    let socialHours: Int = Int.random(in: 1...24)
    let selfCareHours: Int = Int.random(in: 1...24)
}

struct Report {
    let currentRecord: Record = Record()
    let lastRecord: Record = Record()
}

let reports: [Period: Report] = [
    .Daily: Report(),
    .Weekly: Report(),
    .Monthly: Report()
]
