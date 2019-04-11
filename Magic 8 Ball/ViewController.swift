//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Graham Speed on 11/04/2019.
//  Copyright © 2019 Graham Speed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5",]
    
    var randomBallNumber: Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    func newBallImag() {
        
        randomBallNumber = Int.random(in: 0 ... 4)
        
        imageView.image = UIImage(named: ballArray[randomBallNumber])
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newBallImag()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        newBallImag()
        
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        newBallImag()
        
    }
    
}

