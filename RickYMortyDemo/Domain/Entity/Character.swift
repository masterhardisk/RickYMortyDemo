//
//  Character.swift
//  RickYMortyDemo
//
//  Created by MasterHardisk on 24/10/24.
//

import Foundation

struct Character: Identifiable, Hashable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let origin: Origin
    let location: Location
    let image: String
    let episode: [String]
    let created: String
}
