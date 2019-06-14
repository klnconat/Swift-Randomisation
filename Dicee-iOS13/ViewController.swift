//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    
    var leftSideNumber = 0
    var rightSideNumber = 5

    override func viewDidLoad() {
        // when the app first showed up on the phone
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        image1.image = #imageLiteral(resourceName: "DiceTwo")
        image2.image = #imageLiteral(resourceName: "DiceFour")
    }
    
    @IBAction func rollButton(_ sender: UIButton) {
        let imageArr = [ #imageLiteral(resourceName: "DiceOne"),  #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        //randomElement --> array'in içinden random element alır
        image1.image = imageArr.randomElement()
        //random(in: x...y) --> x ve y arasında random elemnt alır --> x: lower , y: upper
        //... range operator olarak kullanılıyor
        image2.image = imageArr[Int.random(in: 1...5)]
    }
    
}

