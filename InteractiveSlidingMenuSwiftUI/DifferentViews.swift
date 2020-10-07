//
//  DifferentViews.swift
//  InteractiveSlidingMenuSwiftUI
//
//  Created by Ashish Tyagi on 07/10/20.
//  Copyright © 2020 Ashish Tyagi. All rights reserved.
//

import SwiftUI

struct MarvelsCollection: Identifiable {
    let id: Int
    let image: String
}

struct Avengers  : View {
    var body: some View{
        VStack{
            Text("Coming Soon")
        }
    }
}

struct Favourites: View {
    var carouselArray: [MarvelsCollection] =
    [
        MarvelsCollection(id: 0, image: "marvels01"),
        MarvelsCollection(id: 1, image: "marvels02"),
        MarvelsCollection(id: 2, image: "marvels03"),
        MarvelsCollection(id: 3, image: "marvels04"),
        MarvelsCollection(id: 4, image: "marvels05"),
        MarvelsCollection(id: 5, image: "marvels06"),
        MarvelsCollection(id: 6, image: "marvels07"),
        MarvelsCollection(id: 7, image: "marvels08")
    ]

    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 200) {
                
        ForEach(carouselArray) { collection in
    GeometryReader { geometry in

        Image(collection.image)
            .resizable()
            .frame(width: 200, height: 300, alignment: .center)
            .cornerRadius(16)
            .shadow(color: Color.black.opacity(0.6),radius: 15,x: 15,y: 15)
            .shadow(color: Color.white,radius: 15,x: -15,y: -15)
            .rotation3DEffect(Angle(degrees: (Double(geometry.frame(in: .global).minX) - 200) / -10), axis: (x: 0.0, y: 1.0, z: 0))
                }
            
              }
           }.padding(.horizontal, 210)
        }
        .background(Color("Color").edgesIgnoringSafeArea(.all))

    }
}

struct DifferentViews: View {
    
    var body: some View {
        Favourites()
    }
}

struct DifferentViews_Previews: PreviewProvider {
    static var previews: some View {
        DifferentViews()
    }
}
