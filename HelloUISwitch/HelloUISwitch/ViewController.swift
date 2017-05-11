//
//  ViewController.swift
//  HelloUISwitch
//
//  Created by Chieh-Wen Yang on 11/05/2017.
//  Copyright © 2017 NineThreads Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mySwitch: UISwitch!
    
    @IBAction func makeChange(_ sender: UISwitch) {
        if sender.isOn == true {
            print("It's on")
            view.backgroundColor = UIColor.blue
        } else {
            print("It's off")
            view.backgroundColor = UIColor.red
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mySwitch.isOn = true
        makeChange(mySwitch)
        
        let codeSwitch = UISwitch(frame: CGRect(x: view.frame.midX-51/2, y: view.frame.maxY - 100, width: 51, height: 31))
        
        codeSwitch.isOn = true
        codeSwitch.addTarget(self, action: #selector(ViewController.codeSwitchChange(sender:)), for: .valueChanged)
        
        view.addSubview(codeSwitch)
    }

    func codeSwitchChange(sender:UISwitch) {
        if sender.isOn == true {
            print("codeSwitch is on")
        } else {
            print("codeSwitch is off")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

