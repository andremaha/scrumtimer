//
//  DailyScrum.swift
//  Scrumtimer
//
//  Created by Andrey Esaulov on 25.06.22.
//

import Foundation

struct DailyScrum: Identifiable {
    var id: UUID
    var title: String
    var attendees: [Attendee]
    var lengthInMinutes: Int
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees.map { Attendee(name: $0) }
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}

extension DailyScrum {
    struct Attendee: Identifiable {
        let id: UUID
        var name: String
        
        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }
    
    struct Data {
        var title: String = ""
        var attendees: [Attendee] = []
        var lengthInMinutes: Double = 5
        var theme: Theme = .seafoam
    }
    
    var data: Data {
        Data(title: title, attendees: attendees, lengthInMinutes: Double(lengthInMinutes), theme: theme)
    }
}

extension DailyScrum {
    static let sampleData: [DailyScrum] = [
        DailyScrum(title: "Development", attendees: ["Igor", "Daria", "Daniil"], lengthInMinutes: 10, theme: .yellow),
        DailyScrum(title: "Product", attendees: ["Igor", "Daria", "Daniil", "Alexandra", "Sophia", "Andrey"], lengthInMinutes: 15, theme: .orange),
        DailyScrum(title: "Business Development", attendees: ["Andrey", "Sophia"], lengthInMinutes: 20, theme: .oxblood),
        DailyScrum(title: "Sales", attendees: ["Andrey", "Sophia"], lengthInMinutes: 15, theme: .poppy),
        DailyScrum(title: "Design", attendees: ["Andrey", "Igor", "Pavel"], lengthInMinutes: 10, theme: .indigo),
        DailyScrum(title: "Investors", attendees: ["Andrey", "Christoph", "Nico", "Laurent", "Max"], lengthInMinutes: 15, theme: .magenta),
        DailyScrum(title: "FUNKE", attendees: ["Andrey", "Jana", "Oliver", "Sophia"], lengthInMinutes: 25, theme: .buttercup),
        DailyScrum(title: "NOZ", attendees: ["Andrey", "Anna"], lengthInMinutes: 10, theme: .seafoam),
        DailyScrum(title: "VRT", attendees: ["Andrey", "Christoph", "Nico", "Laurent", "Max", "Trees", "Sophia"], lengthInMinutes: 45, theme: .purple),
        DailyScrum(title: "Budget", attendees: ["Andrey", "Sophia"], lengthInMinutes: 15, theme: .tan),
        DailyScrum(title: "IT", attendees: ["Andrey", "Igor"], lengthInMinutes: 10, theme: .bubblegum),
        DailyScrum(title: "QA", attendees: ["Andrey", "Daniil", "Daria"], lengthInMinutes: 15, theme: .navy),
    ]
}

