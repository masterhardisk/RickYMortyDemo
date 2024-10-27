//
//  CharacterDataModel.swift
//  RickYMortyDemo
//
//  Created by MasterHardisk on 27/10/24.
//
import SwiftData
import SwiftUICore

@Model
final class CharacterDataModel {
    @Attribute(.unique) var id: Int
    var name: String
    var status: String
    var species: String
    var type: String
    var gender: String
    var episode: [String]
    var created: String
    var origin: OriginDataModel
    var location: LocationDataModel
    var image: String
    
    init(id: Int, name: String, status: String, species: String, type: String, gender: String, episode: [String], origin: OriginDataModel, location: LocationDataModel, image: String, created: String) {
        self.id = id
        self.name = name
        self.status = status
        self.species = species
        self.type = type
        self.gender = gender
        self.episode = episode
        self.origin = origin
        self.location = location
        self.created = created
        self.image = image
    }
}
