//
//  ScrumDingerApp.swift
//  ScrumDinger
//
//  Created by Prabhdeep Singh on 03/01/25.
//

import SwiftUI

@main
struct ScrumDingerApp: App {
    var body: some Scene {
        WindowGroup {
           ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}


