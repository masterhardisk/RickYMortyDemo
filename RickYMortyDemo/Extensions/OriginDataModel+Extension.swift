
//
//  Untitled.swift
//  RickYMortyDemo
//
//  Created by MasterHardisk on 27/10/24.
//

extension OriginDataModel {
    var toOrigin: Origin {
        Origin(name: self.name, url: self.url)
    }
}
