//
//  ViewController.swift
//  HelloCLLocationManager
//
//  Created by Chieh-Wen Yang on 18/05/2017.
//  Copyright © 2017 NineThreads Inc. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var map: MKMapView!
    var locationManager:CLLocationManager?

    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager = CLLocationManager()
        locationManager?.delegate = self
        locationManager?.requestWhenInUseAuthorization()
        
        locationManager?.desiredAccuracy = kCLLocationAccuracyBest
        locationManager?.activityType = .automotiveNavigation
        locationManager?.startUpdatingLocation()
        
        if let coordinate = locationManager?.location?.coordinate {
            let xScale: CLLocationDegrees = 0.01
            let yScale: CLLocationDegrees = 0.01
            let span: MKCoordinateSpan = MKCoordinateSpanMake(yScale, xScale)
            let region = MKCoordinateRegionMake(coordinate, span)
            map.setRegion(region, animated: true)
        }
        
        map.userTrackingMode = .followWithHeading
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let coordinate = locations[0].coordinate
        print("---------------------")
        print(coordinate.latitude)
        print(coordinate.longitude)
    }

    override func viewDidDisappear(_ animated: Bool) {
        locationManager?.stopUpdatingLocation()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

