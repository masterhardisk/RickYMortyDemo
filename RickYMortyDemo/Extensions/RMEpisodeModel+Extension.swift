//
//  RMEpisodeModel+Extension.swift
//  RickYMortyDemo
//
//  Created by MasterHardisk on 24/10/24.
//

import Foundation
import RickMortySwiftApi

extension RMEpisodeModel {
    var toEpisode: Episode {
        Episode(id: id,
                name: name,
                airDate: airDate,
                episode: episode)
    }
}
