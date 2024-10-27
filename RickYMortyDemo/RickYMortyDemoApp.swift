//
//  RickYMortyTestApp.swift
//  RickYMortyDemo
//
//  Created by MasterHardisk on 24/10/24.
//

import SwiftUI
import SwiftData

@main
struct RickYMortyTestApp: App {
    var body: some Scene {
        WindowGroup {
            CharactersView()
        }
        .modelContainer(SwiftDataManager().sharedModelContainer)
    }
}
