//
//  ViewController.swift
//  HelloUIView
//
//  Created by Chieh-Wen Yang on 10/05/2017.
//  Copyright © 2017 NineThreads Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var midRect: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        midRect.backgroundColor = UIColor.green
        midRect.alpha = 0.5
        midRect.isHidden = false
        
        self.view.backgroundColor = UIColor.orange
        view.backgroundColor = UIColor(red: 1, green: 0.3, blue: 0.1, alpha: 0.7)
        
        self.view.viewWithTag(101)?.backgroundColor = UIColor.brown
        
        let viewArea = CGRect(x: 67, y: 426, width: 97, height: 95)
        let smallRect = UIView(frame: viewArea)
        smallRect.backgroundColor = UIColor.cyan
        self.view.viewWithTag(101)?.addSubview(smallRect)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

