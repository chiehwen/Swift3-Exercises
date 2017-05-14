//
//  ViewController.swift
//  HelloUIImageView
//
//  Created by Chieh-Wen Yang on 11/05/2017.
//  Copyright © 2017 NineThreads Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myPet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myPet.image = UIImage(named: "myDog")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

