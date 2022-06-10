//
//  DetailsView.swift
//  SuperHeroBook
//
//  Created by macbook on 10.06.2022.
//

import SwiftUI


struct DetailsView: View {
    var chosenSuperHero : superHero
    var body: some View {
        VStack{
            MapDetails(coordinate: chosenSuperHero.coordinateLocation)
                .frame(height: UIScreen.main.bounds.height * 0.3)
                .edgesIgnoringSafeArea(.top)
                .offset(y: UIScreen.main.bounds.height * -0.15)

            imageDetails(image: Image(chosenSuperHero.imageName))
                .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.3, alignment: .center)
                .offset( y: UIScreen.main.bounds.height * -0.30)
            
            VStack{
                Text(chosenSuperHero.name)
                    .font(.title)
                    .foregroundColor(.red)
                    .offset(y: UIScreen.main.bounds.height * -0.25)
                Text("City: \(chosenSuperHero.city)")
                    .font(.title3)
                    .offset(y: UIScreen.main.bounds.height * -0.22)
                Text("Job: \(chosenSuperHero.jobs)")
                    .font(.title3)
                    .offset(y: UIScreen.main.bounds.height * -0.20)
            }
        }
        
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(chosenSuperHero: batman)
    }
}
