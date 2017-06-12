//
//  ViewController.swift
//  LoginSample
//
//  Created by Chieh-Wen Yang on 24/05/2017.
//  Copyright © 2017 NineThreads Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let inputContainerView = UIView()
    let nameTextField = UITextField()
    let emailTextField = UITextField()
    let passwordTextField = UITextField()
    let borderView = UIView()
    let anotherBorderView = UIView()
    let registerButton = UIButton(type: .system)
    let profileImageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 0.70, green: 0.09, blue: 0.15, alpha: 1.0)
        
        navigationItem.title = "Login/Register"
        
        setupViews()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    func setupViews() {
        inputContainerView.backgroundColor = UIColor.white
        inputContainerView.layer.cornerRadius = 8
        inputContainerView.layer.masksToBounds = true
        inputContainerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(inputContainerView)
        
        inputContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        inputContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -24).isActive = true
        inputContainerView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        nameTextField.placeholder = "Name"
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nameTextField)
        
        nameTextField.topAnchor.constraint(equalTo: inputContainerView.topAnchor).isActive = true
        nameTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/3).isActive = true
        nameTextField.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        //nameTextField.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor).isActive = true
        nameTextField.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor, constant: 8).isActive = true
        
        borderView.backgroundColor = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1.0)
        borderView.translatesAutoresizingMaskIntoConstraints = false
        inputContainerView.addSubview(borderView)
        
        borderView.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        borderView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        borderView.topAnchor.constraint(equalTo: nameTextField.bottomAnchor).isActive = true
        borderView.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor).isActive = true
        
        
        emailTextField.placeholder = "Email"
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(emailTextField)
        
        emailTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor).isActive = true
        emailTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/3).isActive = true
        emailTextField.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        //emailTextField.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor).isActive = true
        emailTextField.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor, constant: 8).isActive = true
        
        anotherBorderView.backgroundColor = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1.0)
        anotherBorderView.translatesAutoresizingMaskIntoConstraints = false
        inputContainerView.addSubview(anotherBorderView)
        
        anotherBorderView.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        anotherBorderView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        anotherBorderView.topAnchor.constraint(equalTo: emailTextField.bottomAnchor).isActive = true
        anotherBorderView.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor).isActive = true
        
        passwordTextField.placeholder = "Password"
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(passwordTextField)
        
        passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor).isActive = true
        passwordTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/3).isActive = true
        passwordTextField.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
        //passwordTextField.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor).isActive = true
        passwordTextField.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor, constant: 8).isActive = true
        
        registerButton.setTitle("Register", for: .normal)
        view.addSubview(registerButton)
        registerButton.translatesAutoresizingMaskIntoConstraints = false
        registerButton.layer.cornerRadius = 20
        registerButton.layer.masksToBounds = true
        registerButton.tintColor = UIColor.white
        registerButton.backgroundColor = UIColor(red: 0.97, green: 0.36, blue: 0.36, alpha: 1.0)
        registerButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 21)
        registerButton.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor, constant: 0).isActive = true
        registerButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        registerButton.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor, constant: 0).isActive = true
        registerButton.topAnchor.constraint(equalTo: inputContainerView.bottomAnchor, constant: 20).isActive = true
        registerButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        
        view.addSubview(profileImageView)
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        profileImageView.image = UIImage(named: "Avatar")
        profileImageView.contentMode = .scaleToFill
        profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        profileImageView.bottomAnchor.constraint(equalTo: inputContainerView.topAnchor, constant: -20).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
    }
    
    func buttonPressed() {
        print("Button Pressed")
        //print(nameTextField.text!)
        //print(emailTextField.text!)
        //print(passwordTextField.text!)
        
        if let name = nameTextField.text {
            print(name)
        }
        
        if let email = emailTextField.text {
            print(email)
        }
        
        if let password = passwordTextField.text {
            print(password)
        }
    }
}
