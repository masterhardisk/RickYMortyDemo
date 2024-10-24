//
//  EpisodeRepositoryTest.swift
//  RickYMortyDemo
//
//  Created by MasterHardisk on 24/10/24.
//
import Testing
@testable import RickYMortyDemo

@Suite("Tests of the Episodes Repository", .tags(.repository))
struct EpisodeRepositoryTest {
    let repository = EpisodeRepository()
    
    @Test
    func getEpisodesByIDSTest() async throws {
        let episodes = try await repository.getEpisodesBy(ids: [1, 2, 3])
        #expect(episodes.count == 3)
    }
    
    @Test
    func getEpisodeByIDTest() async throws {
        let episode = try await repository.getEpisodeBy(id: 1)
        #expect(episode.id == 1)
    }
}
