//
//  SelectHandViewController.swift
//  Practice
//
//  Created by kosuke-kihara on 2020/04/07.
//  Copyright © 2020 kosuke kihara. All rights reserved.
//

import UIKit

class SelectHandViewController: ViewController {
    
    var selectName = "赤ちゃん"
    
    private let segueName = "toResult"
    
    @IBOutlet private weak var vsName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        vsName.text = "vs.\(selectName)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == segueName {
                let resultObj = segue.destination as! ResultViewController
                resultObj.vsName = selectName
                resultObj.playerHand = sender as? String
            }
    }
    
    @IBAction private func stoneButton(_ sender: Any) {
        let selectHand = "グー"
        self.performSegue(withIdentifier: segueName,
        sender: selectHand)
    }
    
    @IBAction private func scissorsButton(_ sender: Any) {
        let selectHand = "チョキ"
        self.performSegue(withIdentifier: segueName,
        sender: selectHand)
    }
    
    @IBAction private func paperButton(_ sender: Any) {
        let selectHand = "パー"
        self.performSegue(withIdentifier: segueName,
        sender: selectHand)
    }
}
