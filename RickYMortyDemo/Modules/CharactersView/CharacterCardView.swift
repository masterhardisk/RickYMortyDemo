//
//  CharacterCardView.swift
//  RickYMortyDemo
//
//  Created by MasterHardisk on 24/10/24.
//

import SwiftUI

struct CharacterCardView: View {
    let character: Character
    
    var body: some View {
        NavigationLink(destination: CharacterDetailView(character: character)) {
            ZStack {
                CachedAsyncImage(url: URL(string: character.image))
                VStack {
                    Spacer()
                    VStack {
                        Text(character.name)
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        Text(character.species)
                            .font(.footnote)
                            .foregroundColor(Color.white)
                        Text(character.origin.name)
                            .font(.caption)
                            .foregroundColor(Color.white)
                        
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.bottom, 5)
                    .padding(.horizontal)
                    .background(.black.opacity(0.4))

            }
            .frame(height: 200)
            }
            .clipShape(RoundedRectangle(cornerRadius: 30))
            
        }
    }
}

#Preview {
    CharacterCardView(character: .test)
}
