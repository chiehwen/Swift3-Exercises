//
//  MainView.swift
//  Text Editor
//
//  Created by Chieh-Wen Yang on 24/05/2017.
//  Copyright © 2017 NineThreads Inc. All rights reserved.
//

import UIKit

class MainView: UIView {
    
    let topBar = UILabel()
    let leftPanel = UITextView()
    let rightPanel = UITextView()
    let bottomBar = UIView()
    let colorLabel = UILabel()
    let sizeLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    func setupViews() {
        addSubview(topBar)
        topBar.translatesAutoresizingMaskIntoConstraints = false
        topBar.backgroundColor = UIColor.black
        topBar.text = "My Text Editor"
        topBar.textColor = UIColor.white
        topBar.textAlignment = .center
        topBar.font = UIFont(name: "Chalkduster", size: 20)
        topBar.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        topBar.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        topBar.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        topBar.heightAnchor.constraint(equalToConstant: 65).isActive = true
        
        // bottomBar
        addSubview(bottomBar)
        bottomBar.translatesAutoresizingMaskIntoConstraints = false
        bottomBar.backgroundColor = UIColor.black
        bottomBar.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        bottomBar.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        bottomBar.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        bottomBar.topAnchor.constraint(equalTo: self.bottomAnchor, constant: -65).isActive = true
        
        // leftPanel
        addSubview(leftPanel)
        leftPanel.translatesAutoresizingMaskIntoConstraints = false
        leftPanel.backgroundColor = UIColor.gray
        leftPanel.text = "1."
        leftPanel.font = UIFont.systemFont(ofSize: 16)
        leftPanel.textAlignment = .left
        leftPanel.isEditable = false
        leftPanel.showsVerticalScrollIndicator = false
        leftPanel.showsHorizontalScrollIndicator = false
        leftPanel.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        leftPanel.topAnchor.constraint(equalTo: topBar.bottomAnchor).isActive = true
        leftPanel.bottomAnchor.constraint(equalTo: bottomBar.topAnchor).isActive = true
        leftPanel.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1/10).isActive = true
        
        // rightPanel
        addSubview(rightPanel)
        rightPanel.translatesAutoresizingMaskIntoConstraints = false
        rightPanel.backgroundColor = UIColor.lightGray
        rightPanel.font = UIFont.systemFont(ofSize: 16)
        rightPanel.textAlignment = .left
        rightPanel.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        rightPanel.topAnchor.constraint(equalTo: topBar.bottomAnchor).isActive = true
        rightPanel.bottomAnchor.constraint(equalTo: bottomBar.topAnchor).isActive = true
        //rightPanel.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 9/10).isActive = true
        rightPanel.leftAnchor.constraint(equalTo: leftPanel.rightAnchor).isActive = true
        
        // colorLabel
        bottomBar.addSubview(colorLabel)
        colorLabel.translatesAutoresizingMaskIntoConstraints = false
        colorLabel.backgroundColor = UIColor.white
        colorLabel.text = "Black"
        colorLabel.textColor = UIColor.black
        colorLabel.textAlignment = .center
        colorLabel.layer.masksToBounds = true
        colorLabel.layer.cornerRadius = 10
        colorLabel.centerYAnchor.constraint(equalTo: bottomBar.centerYAnchor).isActive = true
        colorLabel.leftAnchor.constraint(equalTo: bottomBar.leftAnchor, constant: 16).isActive = true
        colorLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        colorLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        // sizeLabel
        bottomBar.addSubview(sizeLabel)
        sizeLabel.translatesAutoresizingMaskIntoConstraints = false
        sizeLabel.backgroundColor = UIColor.white
        sizeLabel.text = "16"
        sizeLabel.textColor = UIColor.black
        sizeLabel.textAlignment = .center
        sizeLabel.layer.masksToBounds = true
        sizeLabel.layer.cornerRadius = 10
        sizeLabel.centerYAnchor.constraint(equalTo: bottomBar.centerYAnchor).isActive = true
        sizeLabel.rightAnchor.constraint(equalTo: bottomBar.rightAnchor, constant: -16).isActive = true
        sizeLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        sizeLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
