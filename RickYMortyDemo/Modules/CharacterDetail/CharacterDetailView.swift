//
//  CharacterDetailView.swift
//  RickYMortyDemo
//
//  Created by MasterHardisk on 24/10/24.
//

import SwiftUI

struct CharacterDetailView: View {
    @State var characterDetailViewModel = CharacterDetailViewModel()
    let character: Character
    
    var body: some View {
        NavigationStack {
            VStack {
                CharacterDetailHeaderView(character: character)
                CharacterListEpisodesView(character: character)
            }
            .navigationTitle(character.name)
        }
    }
}

#Preview {
    CharacterDetailView(character: .test)
}
