//
//  imageDetails.swift
//  SuperHeroBook
//
//  Created by macbook on 10.06.2022.
//

import SwiftUI

struct imageDetails: View {
    var image : Image
    var body: some View {
        
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.black,lineWidth: 5)).shadow(radius: 0.5)
    }
}

struct imageDetails_Previews: PreviewProvider {
    static var previews: some View {
        imageDetails(image: Image("batman"))
    }
}
