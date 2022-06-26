//
//  ScrumtimerApp.swift
//  Scrumtimer
//
//  Created by Andrey Esaulov on 25.06.22.
//

import SwiftUI

@main
struct ScrumtimerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: DailyScrum.sampleData)
            }
        }
    }
}
