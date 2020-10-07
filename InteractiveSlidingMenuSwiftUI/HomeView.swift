//
//  HomeView.swift
//  InteractiveSlidingMenuSwiftUI
//
//  Created by Ashish Tyagi on 07/10/20.
//  Copyright © 2020 Ashish Tyagi. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            ZStack(alignment: .topTrailing) {
               
                VStack(spacing: 12){
                    Image("mcu")
                    .resizable()
                    .frame(height: 200)
                    .clipShape(Circle())

                }
                .padding()
                .frame(width: 250, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(Color("Color"))
                    .clipShape(Circle())
                    .shadow(color: Color("Color1").opacity(0.6),radius: 5,x: 5,y: 5)
                    .shadow(color: Color.white,radius: 5,x: -5,y: -5)
                .padding()
                
                
                HStack{
                    Button(action: {
                    }) {
                        HStack{
                            Image(systemName: "heart.circle.fill")
                                .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color("RedColor"))
                                .padding()
                                .background(Color("Color"))
                                .cornerRadius(35)
                        }
                    }.shadow(color: Color("Color1").opacity(0.4),radius: 5,x: 5,y: 5)
                    .shadow(color: Color.white,radius: 5,x: -5,y: -5)
                    Spacer()
                    .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }.padding(.trailing)
            }
            
            Favourites()
        }.background(Color("Color")
         .edgesIgnoringSafeArea(.all))
      
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
