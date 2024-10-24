//
//  CharactersView.swift
//  RickYMortyDemo
//
//  Created by MasterHardisk on 24/10/24.
//

import SwiftUI

struct CharactersView: View {
    @State var charactersViewModel = CharactersViewModel()
    
    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 2)) {
                    ForEach(charactersViewModel.filteredCharacters) { character in
                        CharacterCardView(character: character)
                    }
                }
            }
            
            
            .searchable(text: $charactersViewModel.searchText, prompt: "Search")
            .task { await charactersViewModel.fetchCharacters() }
            .navigationTitle("Rick and Morty")
        }
    }
}

#Preview {
    CharactersView()
}
