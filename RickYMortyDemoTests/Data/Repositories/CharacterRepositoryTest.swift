//
//  CharacterRepositoryTest.swift
//  RickYMortyDemo
//
//  Created by MasterHardisk on 24/10/24.
//
import Testing
@testable import RickYMortyDemo

@Suite("Tests of the Characters Repository", .tags(.repository))
struct CharacterRepositoryTest {
    let repository = CharacterRepository()
    
    @Test
    func getCharactersTest() async throws {
        let characters = try await repository.getCharacters()
        #expect(characters.count > 0)
    }

}
