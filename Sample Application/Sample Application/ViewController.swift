//
//  ViewController.swift
//  Sample Application
//
//  Created by Chieh-Wen Yang on 24/05/2017.
//  Copyright © 2017 NineThreads Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    let nameLabel = UILabel()
    let nameTextField = UITextField()
    let submitButton = UIButton(type: .system)
    let daysPicker = UIPickerView()
    let days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        daysPicker.delegate = self
        daysPicker.dataSource = self
        setupView()
    }
    
    func setupView() {
        view.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.text = "Chieh-Wen Yang"
        nameLabel.backgroundColor = UIColor.black
        nameLabel.textColor = UIColor.white
        nameLabel.textAlignment = .center
        nameLabel.layer.masksToBounds = true
        nameLabel.layer.cornerRadius = 15.0
        nameLabel.font = UIFont.systemFont(ofSize: 20)
        nameLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 32).isActive = true
        nameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        nameLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -32).isActive = true
        
        view.addSubview(nameTextField)
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        nameTextField.placeholder = "Enter your name..."
        //nameTextField.borderStyle = .roundedRect
        //nameTextField.borderStyle = .bezel
        //nameTextField.borderStyle = .line
        nameTextField.borderStyle = .none
        nameTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 32).isActive = true
        nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 20).isActive = true
        nameTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        nameTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -32).isActive = true
        
        view.addSubview(submitButton)
        submitButton.translatesAutoresizingMaskIntoConstraints = false
        submitButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        submitButton.titleLabel?.text = "送出"
        submitButton.setTitle("送出", for: .normal)
        submitButton.setTitleColor(UIColor.white, for: .normal)
        //submitButton.titleColor(for: .normal) = UIColor.white
        submitButton.backgroundColor = UIColor.red
        submitButton.layer.masksToBounds = true
        submitButton.layer.cornerRadius = 18.0
        submitButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 32).isActive = true
        submitButton.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 20).isActive = true
        submitButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        submitButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -32).isActive = true
        
        view.addSubview(daysPicker)
        daysPicker.translatesAutoresizingMaskIntoConstraints = false
        daysPicker.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 32).isActive = true
        daysPicker.topAnchor.constraint(equalTo: submitButton.bottomAnchor, constant: 30).isActive = true
        daysPicker.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -32).isActive = true
        daysPicker.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return days.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return days[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        nameLabel.text = days[row]
    }

}

