//
//  Human.swift
//  Practice
//
//  Created by kosuke-kihara on 2020/04/07.
//  Copyright © 2020 kosuke kihara. All rights reserved.
//

class Human {
    
    var name: String!
    
    var voice: String!
    
    var hands: [String]!
    
    func hand() -> String {
        
        let randomNum = Int.random(in: 0...hands.count-1)
        
        return hands[randomNum]
    }
}
