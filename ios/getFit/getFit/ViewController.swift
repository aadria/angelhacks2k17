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

class ViewController: UIViewController, CLLocationManagerDelegate, UITabBarDelegate {

    let locationManager = CLLocationManager()
    let tabBar = UITabBar()
    
    //locationManager.requestLocation()

    
    func alert(message: String, title: String){
        let alertController = UIAlertController(title: title, message:
            message, preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.locationManager.requestAlwaysAuthorization()
        self.locationManager.requestWhenInUseAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
//            locationManager.startUpdatingLocation()
        }
        
        tabBar.delegate = self;
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let locValue:CLLocationCoordinate2D = manager.location!.coordinate
        // we should call an ednpoint here
        self.alert(message: "locations = \(locValue.latitude) \(locValue.longitude)", title: "location")
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error){
        self.alert(message: "Error while updating location " + error.localizedDescription, title: "error")
    }
    
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        self.alert(message: "SHIT", title: "baker")
    }
    
//    func getLeaderboardUsers(){
//        let urlString = URL(string: "http://54.212.234.116:3000/api/users")
//        if let url = urlString {
//            let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
//                if error != nil {
//                    print(error)
//                } else {
//                    if let usableData = data {
//                        print(usableData) //JSONSerialization
//                    }
//                }
//            }
//            task.resume()
//    }


}

