//
//  ViewController.swift
//  HelloPlaySystemSound
//
//  Created by Chieh-Wen Yang on 17/05/2017.
//  Copyright © 2017 NineThreads Inc. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {

    @IBAction func play(_ sender: UIButton) {
        AudioServicesPlaySystemSound(1000)
        AudioServicesPlaySystemSound(1001)
        AudioServicesPlaySystemSound(1002)
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

