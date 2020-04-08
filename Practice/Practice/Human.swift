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
    var selectableCpuHands: [String]!
    
    func createCpuHand() -> String {
        if let _ = selectableCpuHands {
            let randomNum = Int.random(in: 0...selectableCpuHands.count-1)
            return selectableCpuHands[randomNum]
        } else {
            return "エラー"
        }
    }
}
