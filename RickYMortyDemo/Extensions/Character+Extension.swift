//
//  Character+Extension.swift
//  RickYMortyDemo
//
//  Created by MasterHardisk on 24/10/24.
//

extension Character {
    static let test = Character(id: 1,
                                name: "Rick Sanchez",
                                status: "Alive",
                                species: "Human",
                                type: "",
                                gender: "male",
                                origin: Origin(name: "Earth", url: "https://rickandmortyapi.com/api/location/1"),
                                location: Location(name: "Earth", url: "https://rickandmortyapi.com/api/location/20"),
                                image: "https://rickandmortyapi.com/api/character/avatar/1.jpeg",
                                episode: ["https://rickandmortyapi.com/api/episode/1","https://rickandmortyapi.com/api/episode/2"],
                                created: "2017-11-04T18:48:46.250Z")
    
    var episodes: [Int] {
        episode.compactMap { urlString in
            Int(urlString.split(separator: "/").last.map(String.init) ?? "")
        }
    }
}
