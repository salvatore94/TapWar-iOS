//
//  ViewController.swift
//  TapWar
//
//  Created by Salvatore  Polito on 07/11/16.
//  Copyright © 2016 Salvatore  Polito. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var redLabel: UILabel!
    
    @IBOutlet weak var endScene: UIButton!
    
    @IBOutlet weak var topEnd: UILabel!
    @IBOutlet weak var bottomEnd: UILabel!
    
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        score = 0
        
        blueLabel.text = "\(score)"
        redLabel.text = "\(score)"
        
        blueLabel.transform = CGAffineTransform.init(rotationAngle: 3.14)
        topEnd.transform = CGAffineTransform.init(rotationAngle: 3.14)
        
        endScene.isHidden = true
        topEnd.isHidden = true
        bottomEnd.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func blueAction(_ sender: Any) {
        score += 1
        blueLabel.text = "\(score)"
        redLabel.text = "\(score)"
        
        testScore()
    }

    @IBAction func redAction(_ sender: Any) {
        score -= 1
        blueLabel.text = "\(score)"
        redLabel.text = "\(score)"
        
        testScore()
    }
    
    func testScore () {
        if score >= 10 {
            endScene.isHidden = false
            topEnd.isHidden = false
            bottomEnd.isHidden = false
            
            topEnd.text = "Hai Vinto!"
            bottomEnd.text = "Hai Perso!"
            
        } else if score <= -10 {
            endScene.isHidden = false
            topEnd.isHidden = false
            bottomEnd.isHidden = false

            topEnd.text = "Hai Perso!"
            bottomEnd.text = "Hai Vinto!"
        }
    }

    @IBAction func EndSceneAction(_ sender: Any) {
        endScene.isHidden = true
        topEnd.isHidden = true
        bottomEnd.isHidden = true
        
        score = 0
        blueLabel.text = "\(score)"
        redLabel.text = "\(score)"
    }
}

