//
//  ViewController.swift
//  HelloSwitchViews2
//
//  Created by Chieh-Wen Yang on 15/05/2017.
//  Copyright © 2017 NineThreads Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func gotoView2(_ sender: UIButton) {
        let view2 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "view2")
        
        self.navigationController?.pushViewController(view2, animated: true)
//        present(view2, animated: true, completion: nil)
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

