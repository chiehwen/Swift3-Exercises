//
//  ViewController.swift
//  HelloWKWebView
//
//  Created by Chieh-Wen Yang on 22/05/2017.
//  Copyright © 2017 NineThreads Inc. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myWebView = WKWebView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        if let url = URL(string: "http://www.apple.com") {
            let request = URLRequest(url: url)
            myWebView.load(request)
        }
        
        view.addSubview(myWebView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

