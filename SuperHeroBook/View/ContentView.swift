//
//  ContentView.swift
//  SuperHeroBook
//
//  Created by macbook on 10.06.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(superHeroArray) { superHeroo in
                NavigationLink(
                    destination: DetailsView(chosenSuperHero: superHeroo),
                    label: {
                        ListViewDetails(chosenHero:superHeroo)
                    
                    }).navigationTitle(Text("Super Hero Book"))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
