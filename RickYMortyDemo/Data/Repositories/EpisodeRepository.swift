//
//  EpisodeRepository.swift
//  RickYMortyDemo
//
//  Created by MasterHardisk on 24/10/24.
//

import Foundation

class EpisodeRepository: Repository {
    
    func getEpisodeBy(id: Int) async throws -> Episode{
        return try await self.rickandmortyAPI.getEpisodeBy(id: id)
    }
    
    func getEpisodesBy(ids: [Int]) async throws -> [Episode] {
        return try await self.rickandmortyAPI.getEpisodesBy(ids: ids)
    }
}
