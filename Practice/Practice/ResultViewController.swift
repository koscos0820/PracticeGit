//
//  ResultViewController.swift
//  Practice
//
//  Created by kosuke-kihara on 2020/04/07.
//  Copyright © 2020 kosuke kihara. All rights reserved.
//

import UIKit

class ResultViewController: ViewController {
    
    var selectedCpuName: String!
    var playerHand: String!
    
    @IBOutlet private weak var cpuVoiceLabel: UILabel!
    @IBOutlet private weak var cpuHandLabel: UILabel!
    @IBOutlet private weak var selectedHandLabel: UILabel!
    @IBOutlet private weak var resultMessageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let selectedCpuName = selectedCpuName else { return }
        guard let playerHand = playerHand else { return }
        
        let cpuObj = createCpuObj(selectedCpuName)
        let cpuHand = cpuObj.createCpuHand()
        let resultMessage = createResultMessage(checkResult(cpuHand, playerHand))
        // Labelにテキストを登録
        cpuVoiceLabel.text = cpuObj.voice
        cpuHandLabel.text = "\(selectedCpuName)の手: \(cpuObj.createCpuHand())"
        selectedHandLabel.text = "あなたの手: \(playerHand)"
        resultMessageLabel.text = resultMessage
    }
    
    @IBAction private func returnTopButton(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    private func createCpuObj(_ cpuName: String) -> Human {
        //        if cpuName == "赤ちゃん" {
        //            return Baby()
        //        }
        return Baby()
    }
    
    private func checkResult(_ cpuHand: String, _ playerHand: String) -> String {
        if cpuHand == "グー" {
            switch playerHand {
            case "パー":
                return "win"
            case "チョキ":
                return "lose"
            default:
                return "even"
            }
        }else if cpuHand == "チョキ" {
            switch playerHand {
            case "グー":
                return "win"
            case "パー":
                return "lose"
            default:
                return "even"
            }
        }else {
            switch playerHand {
            case "チョキ":
                return "win"
            case "グー":
                return "lose"
            default:
                return "even"
            }
        }
    }
    
    private func createResultMessage(_ result: String) -> String {
        if result == "win" {
            return "あなたの勝ちです！"
        }else if result == "lose" {
            return "あなたの負け！"
        }else {
            return "あいこです！"
        }
    }
}
