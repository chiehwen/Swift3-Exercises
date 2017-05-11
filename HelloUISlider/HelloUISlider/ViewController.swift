//
//  ViewController.swift
//  HelloUISlider
//
//  Created by Chieh-Wen Yang on 11/05/2017.
//  Copyright © 2017 NineThreads Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLebel: UILabel!
    
    
    @IBAction func mySliderChanged(_ sender: UISlider) {
        myLebel.text = "\(Int(sender.value))"
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
