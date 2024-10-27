//
//  OriginDataModel.swift
//  RickYMortyDemo
//
//  Created by MasterHardisk on 27/10/24.
//
import SwiftData

@Model
final class OriginDataModel {
    var name: String
    var url: String
    
    init(name: String, url: String) {
        self.name = name
        self.url = url
    }
}
