//
//  ViewController.swift
//  SpotSearch
//
//  Created by Chieh-Wen Yang on 17/05/2017.
//  Copyright © 2017 NineThreads Inc. All rights reserved.
//

import UIKit
import Alamofire

class TableViewController: UITableViewController {

    var searchURL = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func CallAlamo(url: String) {
        Alamofire.request()
    }
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

