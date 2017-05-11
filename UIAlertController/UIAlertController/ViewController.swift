//
//  ViewController.swift
//  UIAlertController
//
//  Created by Chieh-Wen Yang on 11/05/2017.
//  Copyright © 2017 NineThreads Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func showAlert(_ sender: UIButton) {
        let myAlert = UIAlertController(title: "Hello", message: "How Are You", preferredStyle: .actionSheet)
        
        let okAction = UIAlertAction(title: "確定", style: .default) { (action:UIAlertAction) in
            self.dismiss(animated: true, completion: nil)
        }
        myAlert.addAction(okAction)
        
        let helloAction = UIAlertAction(title: "Say Hello", style: .destructive) { (action:UIAlertAction) in
            print("Say Hi")
            self.dismiss(animated: true, completion: nil)
        }
        myAlert.addAction(helloAction)
        
        
        let cancelAction = UIAlertAction(title: "取消", style: .cancel) { (action:UIAlertAction) in
            print("Cancel")
            self.dismiss(animated: true, completion: nil)
        }
        myAlert.addAction(cancelAction)
        
        
        present(myAlert, animated: true, completion: nil)
        
        
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

