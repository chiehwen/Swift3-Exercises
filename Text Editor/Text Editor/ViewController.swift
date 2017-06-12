//
//  ViewController.swift
//  Text Editor
//
//  Created by Chieh-Wen Yang on 24/05/2017.
//  Copyright © 2017 NineThreads Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    let mainView = MainView()
    var wholeText = ""
    var textString = "1."
    var lineNumber = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.lightGray
        setupViews()
        mainView.leftPanel.delegate = self
        mainView.rightPanel.delegate = self
    }
    
    func setupViews() {
        view.addSubview(mainView)
        mainView.translatesAutoresizingMaskIntoConstraints = false
        mainView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        mainView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        mainView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        mainView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView == mainView.leftPanel {
            mainView.rightPanel.contentOffset = mainView.leftPanel.contentOffset
        } else if scrollView == mainView.rightPanel {
            mainView.leftPanel.contentOffset = mainView.rightPanel.contentOffset
        }
    }
    
    func textViewDidChange(_ textView: UITextView) {
        lineNumber = 1
        wholeText = textView.text!
        
        for text in wholeText.characters {
            if text == "\n" {
                lineNumber = lineNumber + 1
                textString = ""
                
                for i in 1 ... lineNumber {
                    textString = textString + "\(i).\n"
                }
            }
        }
        
        mainView.leftPanel.text = textString
    }
}

