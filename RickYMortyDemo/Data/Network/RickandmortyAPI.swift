//
//  RickandmortyAPI.swift
//  RickYMortyDemo
//
//  Created by MasterHardisk on 24/10/24.
//

import Foundation
import RickMortySwiftApi

class RickandmortyAPI{
    let rmClient = RMClient()
    
    
    func getCharacters() async throws -> [Character] {
        return try await rmClient.character().getAllCharacters().map(\.toCharacter)
    }
    
    func getEpisodeBy(id: Int) async throws -> Episode {
        return try await rmClient.episode().getEpisodeByID(id: id).toEpisode
    }
    
    func getEpisodesBy(ids: [Int]) async throws -> [Episode] {
        return try await rmClient.episode().getEpisodesByIDs(ids: ids).map(\.toEpisode)
    }
}
