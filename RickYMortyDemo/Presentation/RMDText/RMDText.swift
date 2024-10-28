//
//  RMDText.swift
//  RickYMortyDemo
//
//  Created by MasterHardisk on 28/10/24.
//
import SwiftUI

struct RMDText: View {
    let title: String
    let text: String
    var icon: Image? = nil
    var color: Color? =  nil
    
    init(title: String, text: String) {
        self.title = title
        self.text = text
    }
    
    init (title: String, text: String, icon: Image, color: Color?) {
        self.title = title
        self.text = text
        self.icon = icon
        self.color = color
    }
    
    var body: some View {
        HStack {
            Text(title)
            if let icon = icon {
                Label {
                    Text(text)
                        .font(.headline)
                } icon: {
                    icon
                        .foregroundStyle(color ?? .black)
                }
            }else {
                Text(text)
                    .font(.headline)
            }
        }
    }
}

#Preview {
    RMDText(title: "Specie:", text: "Alien")
}
