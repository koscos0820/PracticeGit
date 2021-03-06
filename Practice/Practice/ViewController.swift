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
            guard let selectName = sender as? String,
                let segueDestination = segue.destination as? SelectHandViewController else { fatalError() }
            segueDestination.selectName = selectName
        }
    }
    
    @IBAction private func babyButton(_ sender: Any) {
        transitionSelectHand("赤ちゃん")
    }
    
    @IBAction private func childButton(_ sender: Any) {
    }
    
    @IBAction private func adultButton(_ sender: Any) {
    }
    
    private func transitionSelectHand(_ selectHand: String) {
        performSegue(withIdentifier: segueIdentifier, sender: selectHand)
    }
}

