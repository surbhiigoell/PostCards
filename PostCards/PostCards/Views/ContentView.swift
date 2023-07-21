//
//  ContentView.swift
//  PostCards
//
//  Created by Surbhi Goel on 21/07/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = CardModel()
    
    var body: some View {
        
        ScrollView{
            
            VStack(alignment: .leading) {
                    
                ForEach (model.cardmodel){ c in
                    NavigationView{
                        NavigationLink {
                            descriptions(Card: c)
                        } label: {
                            ZStack{
                                Image(c.image)
                                    .resizable()
                                    .padding(/*@START_MENU_TOKEN@*/.all, 2.0/*@END_MENU_TOKEN@*/)
                                    .scaledToFit()
                                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                                    .opacity(0.6)
                                Text(c.name)
                                    .font(.largeTitle)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.black)
                                
                            }
                        }
                    }.navigationTitle("Post Cards")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
