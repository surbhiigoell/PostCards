//
//  CardModel.swift
//  PostCards
//
//  Created by Surbhi Goel on 21/07/23.
//

import Foundation

class CardModel : ObservableObject{
    
    @Published var cardmodel = [card]()
    
    init()
    {
        self.cardmodel = DataService.getData()
    }
}
