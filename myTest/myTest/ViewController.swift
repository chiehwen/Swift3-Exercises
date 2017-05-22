//
//  ViewController.swift
//  myTest
//
//  Created by Chieh-Wen Yang on 19/05/2017.
//  Copyright © 2017 NineThreads Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton()
        button.setTitle("增加", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.frame = CGRect(
            x: 100,
            y: 50,
            width: 60,
            height: 40
        )
        view.addSubview(button)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
