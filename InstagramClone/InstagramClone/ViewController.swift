//
//  ViewController.swift
//  InstagramClone
//
//  Created by Chieh-Wen Yang on 11/06/2017.
//  Copyright © 2017 NineThreads Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func loginAction(_ sender: Any) {
    }
    @IBAction func createAccount(_ sender: Any) {
    }
    
    
    @IBOutlet weak var accountTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginOutlet.layer.cornerRadius = 50 / 2
        loginOutlet.clipsToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

