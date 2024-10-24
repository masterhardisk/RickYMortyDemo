//
//  RMCharacterLocationModel+Extension.swift
//  RickYMortyDemo
//
//  Created by MasterHardisk on 24/10/24.
//

import Foundation
import RickMortySwiftApi

extension RMCharacterLocationModel {
    var toLocation: Location {
       Location(name: name ,
                url: url)
    }
}
