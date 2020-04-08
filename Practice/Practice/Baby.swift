//
//  Baby.swift
//  Practice
//
//  Created by kosuke-kihara on 2020/04/07.
//  Copyright © 2020 kosuke kihara. All rights reserved.
//

final class Baby: Human {
    
    override init() {
        super.init()
        name = "赤ちゃん"
        voice = "赤ちゃん「だー！」（ぽいっ）"
        selectableCpuHands = ["グー"]
    }
}
