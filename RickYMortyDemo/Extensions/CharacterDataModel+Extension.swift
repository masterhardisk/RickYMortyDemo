//
//  CharacterDataModel+Extension.swift
//  RickYMortyDemo
//
//  Created by MasterHardisk on 27/10/24.
//

extension CharacterDataModel {
    var toCharacter: Character {
        Character(id: self.id,
                  name: self.name,
                  status: Status(rawValue: self.status) ?? .unknown,
                  species: self.species,
                  type: self.type,
                  gender: self.gender,
                  origin: self.origin.toOrigin,
                  location: self.location.toLocation,
                  image: self.image,
                  episode: self.episode,
                  created: self.created)
    }
}
