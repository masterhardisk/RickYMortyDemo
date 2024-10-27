//
//  CharacterDetailHeaderView.swift
//  RickYMortyDemo
//
//  Created by MasterHardisk on 24/10/24.
//

import SwiftUI

struct CharacterDetailHeaderView: View {
    let character: Character
    
    var body: some View {
        ZStack {
            AsyncImage(url: URL(string: character.image)) { image in
                if let image = image.image {
                    image.resizable()
                        .scaledToFill()
                        .frame( height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 25, style: .circular))
                        .clipped()
                        .padding()
                        
                }else {
                    Color
                        .gray
                        .scaledToFill()
                        .frame(height: 200)
                        .clipped()
                }
            }
            VStack {
                Spacer()
                VStack (alignment: .leading){
                    HStack{
                        Label(character.status.rawValue, image: character.status == .unknown ? .heartHalf : .heartFill)
                            .foregroundStyle(character.statusColor)
                            .background(.black.opacity(0.6))
                        Spacer()
                    }
                }
                .padding()
            }
            .padding()
        }.frame(height: 200)
            
    }
}

#Preview {
    CharacterDetailHeaderView(character: .test)
}
