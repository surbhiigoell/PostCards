//
//  descriptions.swift
//  PostCards
//
//  Created by Surbhi Goel on 22/07/23.
//

import SwiftUI

struct descriptions: View {
    
    var Card: card
    
    var body: some View {
        
        ScrollView{
            VStack{
                Image(Card.name)
                    .resizable()
                    .scaledToFill()
                
                Text(Card.name)
            }
        }
    }
}

struct descriptions_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = CardModel()
        descriptions(Card: model.cardmodel[0])
    }
}
