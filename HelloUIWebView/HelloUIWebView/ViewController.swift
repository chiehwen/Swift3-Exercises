//
//  ViewController.swift
//  HelloUIWebView
//
//  Created by Chieh-Wen Yang on 18/05/2017.
//  Copyright © 2017 NineThreads Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myWebView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = URL(string: "https://www.nike.com") {
            let request = URLRequest(url: url)
            myWebView.loadRequest(request)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

