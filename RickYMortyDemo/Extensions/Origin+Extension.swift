//
//  Origin+Extension.swift
//  RickYMortyDemo
//
//  Created by MasterHardisk on 27/10/24.
//

extension Origin {
    var toOriginDataModel: OriginDataModel {
        OriginDataModel(name: name,
                        url: url)
    }
}
