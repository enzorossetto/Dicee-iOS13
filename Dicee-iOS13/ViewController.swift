//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    let diceImageOptions = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
    
    func getRandomDiceImage() -> UIImage {
        let diceImageName = diceImageOptions.randomElement()!
        return UIImage(named: diceImageName)!
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceImageView1.image = getRandomDiceImage()
        diceImageView2.image = getRandomDiceImage()
    }
}
