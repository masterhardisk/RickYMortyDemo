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
        HStack(alignment: .top, spacing: 16) {
            CachedAsyncImage(url: URL(string: character.image))
                .frame(maxWidth: 300)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 8) {
                RMDText(title: "Status:", text: character.status.rawValue, icon: Image(character.status == .unknown ? .heartHalf : .heartFill), color: character.statusColor)
               
                RMDText(title: "Type:", text: character.type.isEmpty ? "N/A" : character.type)
                RMDText(title: "Gender:", text: character.gender)
                RMDText(title: "Origin:", text: character.origin.name)
                RMDText(title: "Location:", text: character.location.name)
            }
        }
        .padding()
        
    }
    
}

#Preview {
    CharacterDetailHeaderView(character: .test)
}
