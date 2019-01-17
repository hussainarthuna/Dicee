//
//  ViewController.swift
//  Dicee
//
//  Created by Hussain Arthuna on 1/16/19.
//  Copyright © 2019 Hussain Arthuna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArrary = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    
    var randomDiceIndex1:Int = 0
    var randomDiceIndex2:Int = 0
    
    
    @IBOutlet weak var diceImageiView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImages()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDiceImages()
        
    }
    
    
    func updateDiceImages() {
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        print(randomDiceIndex1)
        
        diceImageiView1.image = UIImage(named: diceArrary[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArrary[randomDiceIndex2])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        updateDiceImages()
    }
    
    
}

