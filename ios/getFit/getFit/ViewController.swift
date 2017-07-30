//
//  ViewController.swift
//  getFit
//
//  Created by Baker Humadi on 7/29/17.
//  Copyright © 2017 Baker Humadi. All rights reserved.
//

import UIKit

// import geo location stuff
import CoreLocation
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {

//    let locationManager = CLLocationManager()
    
    //locationManager.requestLocation()

    
    func alert(message: String, title: String){
        let alertController = UIAlertController(title: title, message:
            message, preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.locationManager.requestAlwaysAuthorization()
//        self.locationManager.requestWhenInUseAuthorization()
//
//        if CLLocationManager.locationServicesEnabled() {
//            locationManager.delegate = self
//            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
////            locationManager.startUpdatingLocation()
//        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        let locValue:CLLocationCoordinate2D = manager.location!.coordinate
//        // we should call an ednpoint here
//        self.alert(message: "locations = \(locValue.latitude) \(locValue.longitude)", title: "location")
//    }
//
//    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error){
//        self.alert(message: "Error while updating location " + error.localizedDescription, title: "error")
//    }

}

