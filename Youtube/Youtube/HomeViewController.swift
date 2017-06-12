//
//  HomeViewController.swift
//  Youtube
//
//  Created by Chieh-Wen Yang on 25/05/2017.
//  Copyright © 2017 NineThreads Inc. All rights reserved.
//

import UIKit

class HomeViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    
    var videos: [Video] = {
        
        let channel = Channel()
        channel.name = "Chuck's Channel"
        channel.profileImageName = "thumbnail"
        
        let paris = Video()
        paris.thumbnailImageName = "1"
        paris.title = "Cute Body and Girl - Taiwan"
        paris.views = "100,00,000"
        paris.date = "2 months ago"
        paris.channel = channel
        
        let closer = Video()
        closer.thumbnailImageName = "1"
        closer.title = "Cute Body and Girl - Taiwan"
        closer.views = "100,00,000"
        closer.date = "1 months ago"
        closer.channel = channel
        
        let closer2 = Video()
        closer2.thumbnailImageName = "1"
        closer2.title = "Cute Body and Girl - Taiwan"
        closer2.views = "100,00,000"
        closer2.date = "1 months ago"
        closer2.channel = channel
        
        return [paris, closer, closer2]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Collection view background
        //collectionView?.backgroundColor = UIColor.red
        
        // Show the menu title
        //navigationItem.title = "Youtube"
        
        let headingLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width - 32, height: view.frame.height))
        headingLabel.text = "Youtube"
        headingLabel.textColor = UIColor.white
        headingLabel.font = UIFont.systemFont(ofSize: 20)
        navigationItem.titleView = headingLabel
        
        // Register class for cell id
        collectionView?.register(HomeViewControllerCell.self, forCellWithReuseIdentifier: "cell")
        collectionView?.backgroundColor = UIColor.white
        navigationController?.navigationBar.isTranslucent = false
        collectionView?.contentInset = UIEdgeInsetsMake(50, 0, 0, 0)
        collectionView?.scrollIndicatorInsets = UIEdgeInsetsMake(50, 0, 0, 0)
        
        customMenuBar()
        customButton()
    }
    
    func customButton() {
        
        let search = UIImage(named: "search")?.withRenderingMode(.alwaysTemplate)
        let searchButton = UIBarButtonItem(image: search, style: .plain, target: self, action: #selector(handleSearch))
        searchButton.tintColor = UIColor.white
        
        let more = UIImage(named: "more")?.withRenderingMode(.alwaysTemplate)
        let moreButton = UIBarButtonItem(image: more, style: .plain, target: self, action: #selector(handleMore))
        moreButton.tintColor = UIColor.white
        
        navigationItem.rightBarButtonItems = [moreButton, searchButton]
    }
    
    func handleSearch() {
        print(123)
    }
    
    func handleMore() {
        print(456)
    }
    
    let menuBar = MenuBar()
    
    func customMenuBar() {
        
        view.addSubview(menuBar)
        menuBar.translatesAutoresizingMaskIntoConstraints = false
        menuBar.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        menuBar.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        menuBar.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        menuBar.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    
    // Number of collection view in home
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return videos.count
    }
    
    // Cell
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! HomeViewControllerCell
        
        //cell.backgroundColor = UIColor.red
        cell.video = videos[indexPath.item]
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: view.frame.width, height: 250)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 0
    }
}

