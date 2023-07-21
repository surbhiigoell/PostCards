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
            
            VStack {
                NavigationView {
                    
                    ForEach (model.cardmodel){ Card in

                        NavigationLink {

                        } label: {
                            ZStack{
                                Image(Card.image)
                                
                            }
                        }


                    }
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
