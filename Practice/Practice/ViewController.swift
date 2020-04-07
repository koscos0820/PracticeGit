//
//  ViewController.swift
//  Practice
//
//  Created by kosuke-kihara on 2020/04/06.
//  Copyright © 2020 kosuke kihara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let segueIdentifier = "toSelectHand"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == segueIdentifier {
                let selectHandObj = segue.destination as! SelectHandViewController
                selectHandObj.selectName = sender as! String
            }
    }

    @IBAction private func babyButton(_ sender: Any) {
        let selectName = "赤ちゃん"
        self.performSegue(withIdentifier: segueIdentifier,
        sender: selectName)
    }
    
    @IBAction private func childButton(_ sender: Any) {
    }
    
    @IBAction private func adultButton(_ sender: Any) {
    }
    

}

