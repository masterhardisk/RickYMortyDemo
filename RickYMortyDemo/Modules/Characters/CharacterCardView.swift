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
                AsyncImage(url: URL(string: character.image)) { image in
                    if let image = image.image {
                        image.resizable()
                            .scaledToFill()
                            .frame(width: .signalingNaN, height: 200)
                            .clipped()
                    }else {
                        Color
                            .gray
                            .scaledToFill()
                            .frame(width: 100, height: 150)
                    }
                }
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
