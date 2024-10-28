//
//  Location+Extension.swift
//  RickYMortyDemo
//
//  Created by MasterHardisk on 27/10/24.
//

extension Location {
    var toLocationDataModel: LocationDataModel {
        LocationDataModel(name: name,
                          url: url)
    }
}
