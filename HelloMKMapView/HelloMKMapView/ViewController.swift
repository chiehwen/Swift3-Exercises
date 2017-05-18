//
//  ViewController.swift
//  HelloMKMapView
//
//  Created by Chieh-Wen Yang on 18/05/2017.
//  Copyright © 2017 NineThreads Inc. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var map: MKMapView!
    @IBAction func addMeAnnotation(_ sender: UILongPressGestureRecognizer) {
        let touchPoint = sender.location(in: map)
        let touchCoordinate:CLLocationCoordinate2D = map.convert(touchPoint, toCoordinateFrom: map)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = touchCoordinate
        annotation.title = "CHIEH-WEN"
        annotation.subtitle = "我在這裡"
        map.addAnnotation(annotation)
    }
    
    override func viewDidLoad() {

        super.viewDidLoad()
        
        let latitude:CLLocationDegrees = 48.858547
        let longitude: CLLocationDegrees = 2.294524
        let location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        let xscale:CLLocationDegrees = 0.01
        let yscale:CLLocationDegrees = 0.01
        let span:MKCoordinateSpan = MKCoordinateSpanMake(xscale, yscale)
        let region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        map.setRegion(region, animated: true)
        map.mapType = .satellite
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

