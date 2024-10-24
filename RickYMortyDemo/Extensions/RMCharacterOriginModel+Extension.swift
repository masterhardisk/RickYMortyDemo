//
//  RMCharacterOriginModel+Extension.swift
//  RickYMortyDemo
//
//  Created by MasterHardisk on 24/10/24.
//

import Foundation
import RickMortySwiftApi

extension RMCharacterOriginModel {
    var toOrigin: Origin {
        Origin(name: name,
               url: url)
    }
}
