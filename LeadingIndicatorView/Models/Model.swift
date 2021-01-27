//
//  Model.swift
//  LeadingIndicatorView
//
//  Created by 유한묵 on 2021/01/26.
//

import Foundation

struct leadingIndicator: Codable {
    var target: String
    var targetValue: Float
    var dueDate: String
    var currentValue: Float
    var currentDate: String

    var actualProgress: Float {
        currentValue/targetValue
    }

    var plannedProgress: Float {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyyMMdd"
        let startDate = dateFormatter.date(from: "20210118")!
        let currentDate = dateFormatter.date(from: self.currentDate)!
        return (Float(currentDate.timeIntervalSince(startDate) / 86400) * (targetValue/72))/targetValue
    }
}
