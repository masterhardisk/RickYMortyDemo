//
//  SwiftDataManager.swift
//  RickYMortyDemo
//
//  Created by MasterHardisk on 27/10/24.
//
import Foundation
import SwiftData
import SwiftUI

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
    
    
    //MARK: - Characters
    static func getAllCharacters() throws -> [Character]{
        let container = try ModelContainer(for: CharacterDataModel.self)
        let context = ModelContext(container)
        let characters = try context.fetch(FetchDescriptor<CharacterDataModel>()).sorted { $0.id < $1.id }
        return characters.map(\.toCharacter)
    }
    
    static func saveAllCharacters(_ characters: [Character]) async throws{
        let container = try ModelContainer(for: CharacterDataModel.self)
        let context = ModelContext(container)
        
        for character in characters {
            let c = CharacterDataModel(id: character.id,
                                       name: character.name,
                                       status: character.status.rawValue,
                                       species: character.species,
                                       type: character.type,
                                       gender: character.gender,
                                       episode: character.episode,
                                       origin: OriginDataModel(name: character.origin.name,
                                                               url: character.origin.url),
                                       location: LocationDataModel(name: character.location.name,
                                                                   url: character.location.url),
                                       image: character.image,
                                       created: character.created)
            
            context.insert(c)
        }
    }
}
