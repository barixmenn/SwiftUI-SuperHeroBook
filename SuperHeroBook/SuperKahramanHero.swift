//
//  SuperKahramanHero.swift
//  SuperHeroBook
//
//  Created by macbook on 10.06.2022.
//

import Foundation
import CoreLocation
import SwiftUI

struct superHero : Identifiable {
    var id = UUID()
    var name : String
    var imageName : String
    var city : String
    var jobs : String
    var coordinate : Coordinate
    
    var coordinateLocation : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinate.latitude, longitude: coordinate.longitude)
    }
    
}

struct Coordinate {
    var latitude : Double
    var longitude : Double
}

let batman = superHero(name: "Batman", imageName: "batman", city: "Gotham", jobs: "Business man", coordinate: Coordinate(latitude: 43.2233362, longitude: -90.300268))
let superMan = superHero(name: "Super Man", imageName: "superman", city: "Kansas", jobs: "Journalist", coordinate: Coordinate(latitude: 39.0921167, longitude: -94.8559086))
let ironMan = superHero(name: "Iron Man", imageName: "ironman", city: "Kansas", jobs: "Business man", coordinate: Coordinate(latitude: 34.0207305, longitude: -118.6919241))

let superHeroArray = [batman,superMan,ironMan]

