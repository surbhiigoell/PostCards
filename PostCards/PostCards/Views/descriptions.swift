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
                Image(Card.postcard)
                    .resizable()
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .scaledToFill()
                    .cornerRadius(60.0)
                    .shadow(radius: 8)
                
                VStack(alignment: .trailing) {
                    Text(Card.date)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.gray)
                }
                
                
                HStack {
                    Text("From: ")
                        .foregroundColor(Color.gray)
                        .italic()
                    Text(Card.from)
                        .foregroundColor(Color(red: 0.191, green: 0.08, blue: 0.061))
                    Text("To: ")
                        .foregroundColor(Color.gray)
                        .italic()
                    Text(Card.to)
                        .foregroundColor(Color(red: 0.191, green: 0.08, blue: 0.061))
                }
                .padding(.bottom, 10.0)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                
                VStack(alignment: .leading){
                    Text(Card.introduction)
                        .padding(.horizontal, 20.0)
                        .padding(/*@START_MENU_TOKEN@*/.vertical, 10.0/*@END_MENU_TOKEN@*/)
                        .italic()
                    Text(Card.description)
                        .padding(.horizontal, 30.0)
                        .padding(/*@START_MENU_TOKEN@*/.trailing, 10.0/*@END_MENU_TOKEN@*/)
                        
                    Text(Card.special_memory)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 0.253, green: 0.161, blue: 0.145))
                        .padding(.vertical, 10.0)
                        .padding(/*@START_MENU_TOKEN@*/.horizontal, 17.0/*@END_MENU_TOKEN@*/)
                    Text(Card.conclusion)
                        .padding(.horizontal, 30.0)
                }
                
                HStack{
                    Text(Card.uniqueness)
                        .padding(.horizontal, 17.0)
                        .italic()
                    Divider()
                    Text(Card.future_explorations)
                        .padding(.horizontal, 17.0)
                        .italic()
                }
                .padding(.top, 5.0)
                
                Image(Card.image)
                    .resizable()
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .scaledToFill()
                    .cornerRadius(60.0)
                    .shadow(radius: 8)
                
                VStack(alignment: .leading) {
                    ForEach(Card.ideas_inspirations, id: \.self) {idea in
                        HStack(alignment: .top) {
                            Text("• ")
                                .fontWeight(.heavy)
                                .padding(.leading, 30.0)
                            Text(idea)
                                .padding(/*@START_MENU_TOKEN@*/.vertical, 2.0/*@END_MENU_TOKEN@*/)
                                .padding(/*@START_MENU_TOKEN@*/.trailing, 22.0/*@END_MENU_TOKEN@*/)
                        }
                            
                    }
                }
                Text(Card.meaning)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(red: 0.253, green: 0.161, blue: 0.145))
                    .padding(.vertical, 10.0)
                    .padding(/*@START_MENU_TOKEN@*/.horizontal, 17.0/*@END_MENU_TOKEN@*/)
            }.navigationTitle(Card.name)
        }
    }
}

struct descriptions_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = CardModel()
        descriptions(Card: model.cardmodel[0])
    }
}
