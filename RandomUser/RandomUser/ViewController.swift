//
//  ViewController.swift
//  RandomUser
//
//  Created by Chieh-Wen Yang on 15/05/2017.
//  Copyright © 2017 NineThreads Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userImage: UIImageView!
    
    @IBOutlet weak var userName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Change navigation bar color
        navigationController?.navigationBar.barTintColor = UIColor(red: 1.00, green: 0.06, blue: 0.20, alpha: 1.0)
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // Make user image circle
        userImage.layer.cornerRadius = userImage.frame.size.width / 2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

