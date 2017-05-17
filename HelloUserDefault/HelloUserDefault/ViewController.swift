//
//  ViewController.swift
//  HelloUserDefault
//
//  Created by Chieh-Wen Yang on 15/05/2017.
//  Copyright © 2017 NineThreads Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Save info to UserDefaults
        UserDefaults.standard.set("chiehwen", forKey: "username")
        UserDefaults.standard.synchronize()
        
        // Load info from UserDefaults
        if let username = UserDefaults.standard.value(forKey: "username") as? String {
            print(username)
        }
        
        let fruitArray = ["Chuck", "Nora"]
        UserDefaults.standard.set(fruitArray, forKey: "student")
        UserDefaults.standard.synchronize()
        
        if let students = UserDefaults.standard.value(forKey: "student") as? [String] {
            print(students)
            print(students[0])
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

