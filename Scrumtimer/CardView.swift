//
//  CardView.swift
//  Scrumtimer
//
//  Created by Andrey Esaulov on 25.06.22.
//

import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        VStack(alignment: .leading) {
            Text(scrum.title)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            Spacer()
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                    .accessibilityLabel("\(scrum.attendees.count) attendees")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                    .accessibilityLabel("\(scrum.lengthInMinutes) minutes meeting")
                    .labelStyle(.trailingIcon)
            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor)
    }
}

struct CardView_Preview: PreviewProvider {
    static var scrumDev = DailyScrum.sampleData[0]
    static var scrumSales = DailyScrum.sampleData[2]
    static var previews: some View {
        CardView(scrum: scrumDev)
            .background(scrumDev.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 60))
        CardView(scrum: scrumSales)
            .background(scrumSales.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
