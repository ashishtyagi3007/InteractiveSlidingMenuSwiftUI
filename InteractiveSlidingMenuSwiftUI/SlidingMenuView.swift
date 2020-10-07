//
//  SlidingMenuView.swift
//  InteractiveSlidingMenuSwiftUI
//
//  Created by Ashish Tyagi on 07/10/20.
//  Copyright © 2020 Ashish Tyagi. All rights reserved.
//

import SwiftUI

struct SlidingMenuView: View {
    @State var index = 0
    @State var show = false
    var body: some View{
        ZStack{

            // Main Menu...
            HStack{
                VStack(alignment: .leading, spacing: 12) {
                    Image("marvels08")
                        .resizable()
                        .cornerRadius(35)
                        .frame(width: 70, height: 70, alignment: .center)
                    Text("Deadpool")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 10)

                    
                    Button(action: {
                        
                        self.index = 0
                        withAnimation{
                            self.show.toggle()
                        }
                        
                    }) {
                        
                        HStack(spacing: 25){
                            Image(systemName: "flame")
                                .foregroundColor(self.index == 0 ? Color.white : Color.white)
                            Text("Universe")
                                .foregroundColor(self.index == 0 ? Color("RedColor1") : Color.white)
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 0 ? Color("RedColor1").opacity(0.2) : Color.clear)
                        .cornerRadius(10)
                    }
                    .padding(.top,5)
                    
                    Button(action: {
                        self.index = 1
                        withAnimation{
                            self.show.toggle()
                        }
                        
                    }) {
                        
                        HStack(spacing: 25){
                            Image(systemName: "heart.fill")
                                .foregroundColor(self.index == 1 ? Color("RedColor1") : Color.white)
                            Text("Favourites")
                                .foregroundColor(self.index == 1 ? Color("RedColor1") : Color.white)
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 1 ? Color("RedColor1").opacity(0.2) : Color.clear)
                        .cornerRadius(10)
                    }
                    
                    Button(action: {
                       self.index = 2
                       withAnimation{
                           self.show.toggle()
                       }
                       
                   }) {
                       HStack(spacing: 25){
                           Image(systemName: "bolt.fill")
                               .foregroundColor(self.index == 2 ? Color("RedColor1") : Color.white)
                           Text("Avengers")
                               .foregroundColor(self.index == 2 ? Color("RedColor1") : Color.white)
                       }
                       .padding(.vertical, 10)
                       .padding(.horizontal)
                       .background(self.index == 2 ? Color("RedColor1").opacity(0.2) : Color.clear)
                       .cornerRadius(10)
                   }
                    
                    Divider()
                        .frame(width: 150, height: 1)
                        .background(Color.white)
                        .padding(.vertical,15)
                    
                    
                    Spacer(minLength: 0)
                }
                .padding(.top,25)
                .padding(.horizontal,20)
                
                Spacer(minLength: 0)
            }
            .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
            .padding(.bottom,UIApplication.shared.windows.first?.safeAreaInsets.bottom)
            
            // MainView...
            
            VStack(spacing: 0){
                HStack(spacing: 15){
                    Button(action: {
                        withAnimation{
                            self.show.toggle()
                        }
                        
                    }) {
                        
                        // close Button...
                        
                        Image(systemName: self.show ? "xmark" : "line.horizontal.3")
                            .resizable()
                            .frame(width: self.show ? 18 : 22, height: 12)
                            .foregroundColor(Color("RedColor").opacity(0.9))
                    }
                    
                    // Changing Name Based On Index...
                    
                    Text(self.index == 0 ? "Universe" :
                            (self.index == 1 ? "Favourites" :
                                (self.index == 2 ? "Avengers" : "")))
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color("RedColor").opacity(0.9))
                    
                    Spacer(minLength: 0)
                }
                .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
                .padding()
                
                GeometryReader{_ in
                    
                    VStack{
                        // Changing Views Based On Index...
                        if self.index == 0{
                            HomeView()
                        }
                        else if self.index == 1{
                            Favourites()
                        }
                        else {                           Avengers()
                        }
                        
                    }
                }
            }
            .background(Color("Color"))
            //Applying Corner Radius...
            .cornerRadius(self.show ? 30 : 0)
            // Shrinking And Moving View Right Side When Menu Button Is Clicked...
            .scaleEffect(self.show ? 0.9 : 1)
            .offset(x: self.show ? UIScreen.main.bounds.width / 2 : 0, y: self.show ? 15 : 0)
            // Rotating Slighlty...
            .rotationEffect(.init(degrees: self.show ? -5 : 0))
            
        }
        .background(Color.black
        .edgesIgnoringSafeArea(.all))
        .edgesIgnoringSafeArea(.all)

    }
}

struct SlidingMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SlidingMenuView()
    }
}
