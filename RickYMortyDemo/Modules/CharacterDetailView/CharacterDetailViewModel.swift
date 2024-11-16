//
//  CharacterDetailViewModel.swift
//  RickYMortyDemo
//
//  Created by MasterHardisk on 24/10/24.
//

import SwiftUI

@Observable
final class CharacterDetailViewModel {
    let episodeRepository: EpisodeRepository
    var episodes: [Episode] = []
    var errorShow = false
    var errorMessage = ""
    
    init(episodeRepository: EpisodeRepository = EpisodeRepository()) {
        self.episodeRepository = episodeRepository
    }
    
    func fetchEpisodes(character: Character) async {
        do {
            if character.episodes.count == 1 {
                let episode = try await episodeRepository.getEpisodeBy(id: character.episodes.first!)
                episodes.append(episode)
            }else {
                episodes = try await episodeRepository.getEpisodesBy(ids: character.episodes)
            }
        }catch {
            errorShow.toggle()
            errorMessage = error.localizedDescription
        }
        
    }
}
