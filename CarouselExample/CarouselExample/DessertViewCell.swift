//
//  DessertViewCell.swift
//  CarouselExample
//
//  Created by Chieh-Wen Yang on 12/06/2017.
//  Copyright © 2017 NineThreads Inc. All rights reserved.
//

import UIKit

class DessertViewCell: UICollectionViewCell {
    
    @IBOutlet weak var Img: UIImageView!
    @IBOutlet weak var Title: UILabel!
    
    var myDessert: Dessert! {
        didSet {
            updateData()
        }
    }
    
    func updateData() {
        Title.text = myDessert.title
        Img.image = myDessert.images
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 10.0
        self.clipsToBounds = true
    }
}
