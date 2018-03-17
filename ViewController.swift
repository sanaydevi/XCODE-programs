//
//  ViewController.swift
//  Dice
//
//  Created by Sanay Devi on 3/8/18.
//  Copyright © 2018 sanay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomDiceIndex1: Int=0
    var randomeDiceIndex2: Int=0
    let diceArray = ["dice1" , "dice2","dice3","dice4","dice5","dice6"]
    @IBOutlet weak var leftDiceImage: UIImageView!
    @IBOutlet weak var rightDiceImage: UIImageView!
    
    func roll()
    {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomeDiceIndex2 = Int(arc4random_uniform(6))
        
        leftDiceImage.image = UIImage(named: diceArray[randomDiceIndex1])
        rightDiceImage.image = UIImage(named:diceArray[randomeDiceIndex2])
        //UIimage is a dattatype
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        roll()
        
        // Do any additional setup after loading the view, typically from a nib. This happens when the screen loads
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        roll()
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        roll()
    }
    
    
}

