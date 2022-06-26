//
//  DailyScrum.swift
//  Scrumtimer
//
//  Created by Andrey Esaulov on 25.06.22.
//

import Foundation

struct DailyScrum {
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var theme: Theme
}

extension DailyScrum {
    static let sampleData: [DailyScrum] = [
        DailyScrum(title: "Development", attendees: ["Igor", "Daria", "Daniil"], lengthInMinutes: 10, theme: .yellow),
        DailyScrum(title: "Product", attendees: ["Igor", "Daria", "Daniil", "Alexandra", "Sophia", "Andrey"], lengthInMinutes: 15, theme: .orange),
        DailyScrum(title: "Sales", attendees: ["Andrey", "Sophia"], lengthInMinutes: 15, theme: .poppy)
    ]
}
