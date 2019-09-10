//
//  ViewController.swift
//  Diceeeeeee
//
//  Created by Anhquan Nguyen on 9/9/19.
//  Copyright © 2019 Anhquan Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1: Int = 0      // For dice 1 view
    var randomDiceIndex2: Int = 0      // For dice 2 view
    
    // dice array to identify which image to display
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    
    // Left Dice
    @IBOutlet weak var diceImageView1: UIImageView!
    
    // Right Dice
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        randomDiceImages()
    }

    // When the roll button is pressed
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        randomDiceImages()
    }
    
    // When our shaking motion has ended, we will perform our dice rolls
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomDiceImages()
    }
    
    func randomDiceImages(){
        // getting a random number between 0 and 5 / 1-6
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        //print(randomDiceIndex1, randomDiceIndex2)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
}

