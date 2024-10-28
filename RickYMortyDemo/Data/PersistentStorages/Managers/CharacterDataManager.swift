//
//  CharacterDataManager.swift
//  RickYMortyDemo
//
//  Created by MasterHardisk on 27/10/24.
//
import SwiftData
import Foundation

struct CharacterDataManager {
    static func getAllCharacters() throws -> [Character]{
        let container = try ModelContainer(for: CharacterDataModel.self)
        let context = ModelContext(container)
        let characters = try context.fetch(FetchDescriptor<CharacterDataModel>()).sorted { $0.id < $1.id }
        return characters.map(\.toCharacter)
    }
    
    static func saveAllCharacters(_ characters: [Character]) async throws{
        let container = try ModelContainer(for: CharacterDataModel.self)
        let context = ModelContext(container)
        
        let charactersStored = try getAllCharacters()
        
        let charactersToStore = characters.filter { c in
            !charactersStored.contains(where: { $0.id == c.id })
        }.map(\.toCharacterDataModel)
        
        charactersToStore.forEach { CharacterDataModel in
             context.insert(CharacterDataModel)
        }
    
        try context.save()
    }
}
