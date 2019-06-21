//
//  ViewController.swift
//  DiceApp
//
//  Created by Matthew Turk on 6/20/17.
//  Copyright © 2017 MonitorMOJO. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet var die1: UIImageView!
    @IBOutlet var die2: UIImageView!
    @IBOutlet var sumLabel: UILabel!
    @IBAction func didRoll(_ sender: Any) {
        let die1Num = arc4random_uniform(6) + 1
        let die2Num = arc4random_uniform(6) + 1
        die1.image = UIImage(named: "Dice\(die1Num)")
        die2.image = UIImage(named: "Dice\(die2Num)")
        sumLabel.text = "Sum: \(die1Num + die2Num)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

