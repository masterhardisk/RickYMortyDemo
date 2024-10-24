//
//  CharacterRepository.swift
//  RickYMortyDemo
//
//  Created by MasterHardisk on 24/10/24.
//
import Foundation

class CharacterRepository: Repository {
    func getCharacters() async throws -> [Character] {
        return try await rickandmortyAPI.getCharacters()
    }
}
