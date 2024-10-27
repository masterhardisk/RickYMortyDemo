//
//  CharactersViewModel.swift
//  RickYMortyDemo
//
//  Created by MasterHardisk on 24/10/24.
//

import SwiftUI

@Observable
final class CharactersViewModel {
    let characterRepository: CharacterRepository
    var characters: [Character] = []
    var searchText = ""
    var errorShow = false
    var errorMessage = ""
    
    var filteredCharacters: [Character] {
        if searchText.isEmpty {
            characters
        }else {
            characters.filter {
                $0.name.localizedCaseInsensitiveContains(searchText) ||
                $0.species.localizedCaseInsensitiveContains(searchText) ||
                $0.origin.name.localizedCaseInsensitiveContains(searchText) ||
                $0.gender.localizedCaseInsensitiveContains(searchText)
            }
        }
    }
    
    init(characterRepository: CharacterRepository = CharacterRepository()) {
        self.characterRepository = characterRepository
    }
    
    func fetchCharacters() async {
        do {
            characters = try await characterRepository.getCharacters()
        } catch {
            print(error)
            errorShow.toggle()
            errorMessage = error.localizedDescription
        }
    }

}
