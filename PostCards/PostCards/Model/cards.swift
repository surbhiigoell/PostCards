//
//  cards.swift
//  PostCards
//
//  Created by Surbhi Goel on 21/07/23.
//

import Foundation

class card: Identifiable , Decodable{
    
    var id:UUID?
    var name:String
    var image:String
    var postcard:String
    var date:String
    var to:String
    var from:String
    var introduction:String
    var description:String
    var conclusion:String
    var special_memory:String
    var uniqueness:String
    var future_explorations:String
    var ideas_inspirations:[String]
    var meaning:String
}
