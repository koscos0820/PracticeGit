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
        guard let selectName = selectName else { return }
        vsNameLabel.text = "vs.\(selectName)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueName {
            let resultObj = segue.destination as! ResultViewController
            resultObj.selectedCpuName = selectName
            resultObj.playerHand = sender as? String
        }
    }
    
    @IBAction private func stoneButton(_ sender: Any) {
        let selectHand = "グー"
        performSegue(withIdentifier: segueName, sender: selectHand)
    }
    
    @IBAction private func scissorsButton(_ sender: Any) {
        let selectHand = "チョキ"
        performSegue(withIdentifier: segueName, sender: selectHand)
    }
    
    @IBAction private func paperButton(_ sender: Any) {
        let selectHand = "パー"
        performSegue(withIdentifier: segueName, sender: selectHand)
    }
}
