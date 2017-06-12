//
//  subClass.swift
//  CarouselExample
//
//  Created by Chieh-Wen Yang on 12/06/2017.
//  Copyright © 2017 NineThreads Inc. All rights reserved.
//

import UIKit

class subClass: UITableViewCell {

    var dessert = Dessert.createCatagory()
    
    @IBOutlet weak var collectionView: UICollectionView!

}

extension subClass: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dessert.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: "dessertCell", for: indexPath) as! DessertViewCell
        myCell.myDessert = dessert[indexPath.row]
        return myCell
    }
}
