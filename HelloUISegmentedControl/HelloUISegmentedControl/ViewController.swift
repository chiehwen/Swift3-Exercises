//
//  ViewController.swift
//  HelloUISegmentedControl
//
//  Created by Chieh-Wen Yang on 11/05/2017.
//  Copyright © 2017 NineThreads Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func myToggleChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            print("White")
            view.backgroundColor = UIColor.white
        } else if sender.selectedSegmentIndex == 1 {
            print("Black")
            view.backgroundColor = UIColor.black
        } else if sender.selectedSegmentIndex == 2 {
            print("Red")
            view.backgroundColor = UIColor.red
        } else if sender.selectedSegmentIndex == 3 {
            print("Yello")
            view.backgroundColor = UIColor.yellow
        } else if sender.selectedSegmentIndex == 4 {
            print("Blue")
            view.backgroundColor = UIColor.blue
        }
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
