//
//  CharacterListEpisodesView.swift
//  RickYMortyDemo
//
//  Created by MasterHardisk on 24/10/24.
//

import SwiftUI

struct CharacterListEpisodesView: View {
    @State var characterDetailViewModel = CharacterDetailViewModel()
    let character: Character
    
    var body: some View {
        Text("List of Episodes:")
            .font(.headline)
        List {
            if characterDetailViewModel.episodes.isEmpty {
                Text("No episodes found")
            } else {
                ForEach(characterDetailViewModel.episodes) { episode in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(episode.name)
                                .font(.headline)
                            Text(episode.episode)
                                .font(.footnote)
                        }
                        Spacer()
                        Text(episode.airDate)
                            .font(.footnote)
                    }
                }
            }
            
        }
        .task { await characterDetailViewModel.fetchEpisodes(character: character) }
    }
}

#Preview {
    CharacterListEpisodesView(character: .test)
}
