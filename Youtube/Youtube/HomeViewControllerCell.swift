//
//  HomeViewControllerCell.swift
//  Youtube
//
//  Created by Chieh-Wen Yang on 25/05/2017.
//  Copyright © 2017 NineThreads Inc. All rights reserved.
//

import UIKit

class HomeViewControllerCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    var video: Video? {
        didSet {
            thumbnailImageView.image = UIImage(named: (video?.thumbnailImageName!)!)
            profileImageView.image = UIImage(named: (video?.channel?.profileImageName)!)
            titleTextView.text = video?.title
            //subTitleTextView.text = video?.channel?.name
            subTitleTextView.text = "\((video?.channel?.name)!) - \((video?.views)!) - \((video?.date)!)"
        }
    }
    
    let thumbnailImageView = UIImageView()
    let profileImageView = UIImageView()
    let titleTextView = UITextView()
    let subTitleTextView = UITextView()
    let separatorView = UIView()
    
    func setupViews() {
        
        addSubview(thumbnailImageView)
        thumbnailImageView.translatesAutoresizingMaskIntoConstraints = false
        //thumbnailImageView.backgroundColor = UIColor.blue
        thumbnailImageView.image = UIImage(named: "1")
        thumbnailImageView.contentMode = .scaleAspectFill
        thumbnailImageView.clipsToBounds = true
        thumbnailImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16).isActive = true
        thumbnailImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 16).isActive = true
        thumbnailImageView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16).isActive = true
        thumbnailImageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        
        // profileImageView
        addSubview(profileImageView)
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        //profileImageView.backgroundColor = UIColor.green
        profileImageView.image = UIImage(named: "1")
        profileImageView.layer.masksToBounds = true
        profileImageView.layer.cornerRadius = 22
        profileImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16).isActive = true
        profileImageView.topAnchor.constraint(equalTo: thumbnailImageView.bottomAnchor, constant: 8).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 44).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        // titleTextView
        addSubview(titleTextView)
        titleTextView.translatesAutoresizingMaskIntoConstraints = false
        //titleTextView.backgroundColor = UIColor.yellow
        titleTextView.text = "BB and 橘寶"
        titleTextView.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: 8).isActive = true
        titleTextView.topAnchor.constraint(equalTo: thumbnailImageView.bottomAnchor, constant: 8).isActive = true
        titleTextView.rightAnchor.constraint(equalTo: thumbnailImageView.rightAnchor).isActive = true
        titleTextView.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
        // subTitleTextView
        addSubview(subTitleTextView)
        subTitleTextView.translatesAutoresizingMaskIntoConstraints = false
        //subTitleTextView.backgroundColor = UIColor.orange
        subTitleTextView.text = "可愛的兒子與女兒"
        subTitleTextView.textColor = UIColor.lightGray
        subTitleTextView.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: 8).isActive = true
        subTitleTextView.topAnchor.constraint(equalTo: titleTextView.bottomAnchor).isActive = true
        subTitleTextView.rightAnchor.constraint(equalTo: thumbnailImageView.rightAnchor).isActive = true
        subTitleTextView.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
        addSubview(separatorView)
        separatorView.translatesAutoresizingMaskIntoConstraints = false
        separatorView.backgroundColor = UIColor.lightGray
        separatorView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        separatorView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        separatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        separatorView.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 8).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
