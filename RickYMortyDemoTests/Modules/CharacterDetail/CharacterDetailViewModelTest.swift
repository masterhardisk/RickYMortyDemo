//
//  CharacterDetailViewModelTest.swift
//  RickYMortyDemo
//
//  Created by MasterHardisk on 24/10/24.
//

import Testing
@testable import RickYMortyDemo

@Suite("Tests of the Characters Detail View Model", .tags(.viewModel))
struct CharacterDetailViewModelTest {
    let viewModel = CharacterDetailViewModel()
    
    @Test
    func fetchEpisodesTest() async throws {
        await viewModel.fetchEpisodes(character: .test)
        #expect(viewModel.episodes.count == 2)
    }

}
