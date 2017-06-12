//
//  Dessert.swift
//  CarouselExample
//
//  Created by Chieh-Wen Yang on 12/06/2017.
//  Copyright © 2017 NineThreads Inc. All rights reserved.
//

import Foundation
import UIKit

class Dessert {
    
    var title: String!
    var images: UIImage!
    
    init(title: String, images: UIImage) {
        self.title = title
        self.images = images
    }
    
    static func createCatagory() -> [Dessert] {
        return [
            Dessert(title: "Hello01", images: UIImage(named: "item1")!),
            Dessert(title: "Hello02", images: UIImage(named: "item2")!),
            Dessert(title: "Hello03", images: UIImage(named: "item3")!),
            Dessert(title: "Hello04", images: UIImage(named: "item1")!),
            Dessert(title: "Hello05", images: UIImage(named: "item2")!),
            Dessert(title: "Hello06", images: UIImage(named: "item3")!),
            Dessert(title: "Hello07", images: UIImage(named: "item1")!),
            Dessert(title: "Hello08", images: UIImage(named: "item2")!),
            Dessert(title: "Hello09", images: UIImage(named: "item3")!),
        ]
    }
}
