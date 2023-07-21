//
//  DataService.swift
//  PostCards
//
//  Created by Surbhi Goel on 21/07/23.
//

import Foundation

class DataService {
    
    static func getData() -> [card]
    {
        let pathString = Bundle.main.path(forResource: "postcard", ofType: "json")
        
        guard pathString != nil else {
            return [card]()
        }
        
        let url = URL(fileURLWithPath: pathString!)
        
        do{
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            
            do{
                let cardData = try decoder.decode([card].self, from: data)
                
                for c in cardData {
                    c.id = UUID()
                }
                
                return cardData
            }
            catch{
                print(error)
            }
        }
        catch{
            print(error)
        }
        return [card]()
    }
}
