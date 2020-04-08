//
//  SelectHandViewController.swift
//  Practice
//
//  Created by kosuke-kihara on 2020/04/07.
//  Copyright © 2020 kosuke kihara. All rights reserved.
//

import UIKit

class SelectHandViewController: ViewController {
    
    var selectName: String!
    
    private let segueName = "toResult"
    
    @IBOutlet private weak var vsNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let selectName = selectName else { fatalError() }
        vsNameLabel.text = "vs.\(selectName)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueName {
            (segue.destination as! ResultViewController).selectedCpuName = selectName
            if let playerHand = sender as? String {
                (segue.destination as! ResultViewController).playerHand = playerHand
            }
        }
    }
    
    @IBAction private func stoneButton(_ sender: Any) {
        transitionResult("グー")
    }
    
    @IBAction private func scissorsButton(_ sender: Any) {
        transitionResult("チョキ")
    }
    
    @IBAction private func paperButton(_ sender: Any) {
        transitionResult("パー")
    }
    
    private func transitionResult(_ selectHand: String) {
        performSegue(withIdentifier: segueName, sender: selectHand)
    }
}
