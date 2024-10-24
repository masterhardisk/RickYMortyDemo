//
//  CharactersViewModelTest.swift
//  RickYMortyDemo
//
//  Created by MasterHardisk on 24/10/24.
//

import Testing
@testable import RickYMortyDemo

@Suite("Tests of the Characters View Model", .tags(.viewModel))
struct CharactersViewModelTest {
    let viewModel = CharactersViewModel()
    
    @Test
    func fetchEpisodesTest() async throws {
        await viewModel.fetchCharacters()
        #expect(viewModel.characters.count > 0)
    }

}
