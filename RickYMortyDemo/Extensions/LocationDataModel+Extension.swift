//
//  LocationDataModel.swift
//  RickYMortyDemo
//
//  Created by MasterHardisk on 27/10/24.
//

extension LocationDataModel {
    var toLocation: Location {
        Location(name: self.name, url: self.url)
    }
}
