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
    
    
    init(episodeRepository: EpisodeRepository = EpisodeRepository()) {
        self.episodeRepository = episodeRepository
    }
    
    func fetchEpisodes(character: Character) async {
        if character.episodes.count == 1 {
            guard let episode = try? await episodeRepository.getEpisodeBy(id: character.episodes.first!) else { return }
            episodes.append(episode)
        }else {
            episodes = (try? await episodeRepository.getEpisodesBy(ids: character.episodes)) ?? []
        }
    }
}
