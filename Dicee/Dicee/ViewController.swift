//
//  ViewController.swift
//  Dicee
//
//  Created by Luiz Gustavo Caciatori on 13/08/19.
//  Copyright © 2019 Luiz Gustavo Caciatori. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDiceOne: Int = 0
    var randomDiceTwo: Int = 0

    @IBOutlet weak var diceImageOne: UIImageView!
    
    @IBOutlet weak var diceImageTwo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateImageView()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateImageView()
    }
    
    @IBAction func rollButtonPressed(_ sender: Any) {
        updateImageView()
    }

    fileprivate func updateImageView() {
        randomDiceOne = Int.random(in: 0 ... 5)
        randomDiceTwo = Int.random(in: 0 ... 5)
        
        diceImageOne.image = UIImage(named: diceArray[randomDiceOne])
        diceImageTwo.image = UIImage(named: diceArray[randomDiceTwo])
    }
    
}

