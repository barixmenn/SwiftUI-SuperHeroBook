//
//  ListView.swift
//  SuperHeroBook
//
//  Created by macbook on 10.06.2022.
//

import SwiftUI

struct ListViewDetails: View {
    var chosenHero : superHero
    var body: some View {
        HStack {
            Image(chosenHero.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 60, alignment: .center)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black,lineWidth: 0.5))
            Spacer()
            
           
            HStack {
                Text(chosenHero.name)
                    .italic()
                    .font(.title2)
            }
            
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListViewDetails(chosenHero: batman)
    }
}
