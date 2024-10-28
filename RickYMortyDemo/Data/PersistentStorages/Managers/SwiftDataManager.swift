//
//  SwiftDataManager.swift
//  RickYMortyDemo
//
//  Created by MasterHardisk on 27/10/24.
//
import SwiftData

@MainActor
class SwiftDataManager {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([CharacterDataModel.self, LocationDataModel.self, OriginDataModel.self])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
        
        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()
}
