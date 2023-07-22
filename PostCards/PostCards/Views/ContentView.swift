//
//  ContentView.swift
//  PostCards
//
//  Created by Surbhi Goel on 21/07/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        @ObservedObject var model = CardModel()
        
        NavigationView{
            ScrollView{
                ForEach (model.cardmodel) { c in
                    NavigationLink {
                        descriptions(Card: c)
                    } label: {
                        ZStack{
                            Image(c.image)
                                .resizable()
                                .scaledToFill()
//                                .cornerRadius(15.0)
                                .opacity(0.8)
                                .shadow(radius: 5)
                                .border(/*@START_MENU_TOKEN@*/Color(red: 0.838, green: 0.725, blue: 0.702)/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                            Text(c.name)
//                                .font(.largeTitle)
                                .font(.system(size: 48))
                                .fontWeight(.medium)
                                .foregroundColor(Color(hue: 1.0, saturation: 0.874, brightness: 0.19))
                                .fontDesign(.rounded)
                                .controlSize(/*@START_MENU_TOKEN@*/.large/*@END_MENU_TOKEN@*/)
                                
                                
                                
                            
                        }
                        .padding(.horizontal, 22.0)
                        .padding(.vertical, 10.0)
                    }
                }.navigationTitle("Post Cards")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
