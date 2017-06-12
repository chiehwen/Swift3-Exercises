//
//  MenuCell.swift
//  Youtube
//
//  Created by Chieh-Wen Yang on 25/05/2017.
//  Copyright © 2017 NineThreads Inc. All rights reserved.
//

import UIKit

class MenuCell: UICollectionViewCell {
    
    let thumbImage = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor(red: 230/255, green: 31/255, blue: 32/255, alpha: 1)
        addSubview(thumbImage)
        thumbImage.translatesAutoresizingMaskIntoConstraints = false
        thumbImage.widthAnchor.constraint(equalToConstant: 28).isActive = true
        thumbImage.heightAnchor.constraint(equalToConstant: 28).isActive = true
        thumbImage.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        thumbImage.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override var isSelected: Bool {
        didSet {
            tintColor = isSelected ? UIColor.white : UIColor(red: 91/255, green: 13/255, blue: 14/255, alpha: 1)
        }
    }
}
