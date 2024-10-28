//
//  CharacterRepository.swift
//  RickYMortyDemo
//
//  Created by MasterHardisk on 24/10/24.
//
import Foundation

class CharacterRepository: Repository {
    
    func getCharacters() async throws -> [Character] {
        var characters: [Character]
        switch networkManager.isConnected {
        case .connected:
            characters = try await rickandmortyAPI.getAllCharacters()
            try await CharacterDataManager.saveAllCharacters(characters)
            return characters
        case .disconnected, .unknown:
            characters = try CharacterDataManager.getAllCharacters()
            return characters
        }
    }
}
