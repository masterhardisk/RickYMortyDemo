//
//  CharacterRepository.swift
//  RickYMortyDemo
//
//  Created by MasterHardisk on 24/10/24.
//
import Foundation

class CharacterRepository: Repository {
    func getCharacters() async throws -> [Character] {
        var characters = try await SwiftDataManager.getAllCharacters()
        if !characters.isEmpty {
            print("from swift data: \(characters.count)")
            return characters
        }else {
            characters = try await rickandmortyAPI.getCharacters()
            try await SwiftDataManager.saveAllCharacters(characters)
            print("from api: \(characters.count)")
            return characters
        }
    }
}
