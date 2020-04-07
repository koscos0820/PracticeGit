//
//  ResultViewController.swift
//  Practice
//
//  Created by kosuke-kihara on 2020/04/07.
//  Copyright © 2020 kosuke kihara. All rights reserved.
//

import UIKit

class ResultViewController: ViewController {
    
    var vsName: String!
    var playerHand: String!
    private var cpuObj: Human!
    
    @IBOutlet private weak var cpuVoiceLabel: UILabel!
    @IBOutlet private weak var cpuHandLabel: UILabel!
    @IBOutlet private weak var selectedHandLabel: UILabel!
    @IBOutlet private weak var resultMessageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        createCpuObj(vsName)
        
        let cpuHand = cpuObj.hand()
        
        let resultMsg = createResultMessage(cpuHand, playerHand)
        
        // Labelにテキストを登録
        cpuVoiceLabel.text = cpuObj.voice
        cpuHandLabel.text = "\(vsName as String)の手: \(cpuHand)"
        selectedHandLabel.text = "あなたの手: \(playerHand as String)"
        resultMessageLabel.text = resultMsg
    }
    
    @IBAction private func returnTopButton(_ sender: Any) {
        
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    private func createCpuObj(_ cpuName: String) {
        if cpuName == "赤ちゃん" {
            cpuObj = Baby()
        }else {
            return
        }
    }
    
    private func createResultMessage(_ cpuHand: String, _ userHand: String) -> String {
           
        let win = "あなたの勝ちです！"
        let lose = "あなたの負け！"
        let even = "あいこです！"
        
        if cpuHand == "グー" {
            switch userHand {
            case "パー":
                return win
            case "チョキ":
                return lose
            default:
                return even
            }
        }else if cpuHand == "チョキ" {
            switch userHand {
            case "グー":
                return win
            case "パー":
                return lose
            default:
                return even
            }
        }else {
            switch userHand {
            case "チョキ":
                return win
            case "グー":
                return lose
            default:
                return even
            }
        }
    }
    
}
