//
//  RMCharacterModel+Extension.swift
//  RickYMortyDemo
//
//  Created by MasterHardisk on 24/10/24.
//

import Foundation
import RickMortySwiftApi

extension RMCharacterModel {
    var toCharacter: Character {
        Character(id: id,
                  name: name,
                  status: Status(rawValue: status) ?? .unknown,
                  species: species,
                  type: type,
                  gender: gender,
                  origin: origin.toOrigin,
                  location: location.toLocation,
                  image: image,
                  episode: episode,
                  created: created)
    }
}
    
