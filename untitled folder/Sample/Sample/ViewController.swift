//
//  ViewController.swift
//  Sample
//
//  Created by Charlyn Buchanan on 3/11/15.
//  Copyright (c) 2015 Charlyn Buchanan. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    var mapView: MKMapView!
    var locationManager: CLLocationManager?
    
    func mapView(mapView: MKMapView!,
        didFailToLocateUserWithError error: NSError!) {
            displayAlertWithTitle("Failed",
                message: "Could not get the user's location")
    }
    
    func mapView(mapView: MKMapView!,
        didUpdateUserLocation userLocation: MKUserLocation!) {
            
            let request = MKLocalSearchRequest()
            request.naturalLanguageQuery = "restaurants";
            
            let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
            
            request.region = MKCoordinateRegion(
                center: userLocation.location.coordinate,
                span: span)
            
            let search = MKLocalSearch(request: request)
            
            search.startWithCompletionHandler{
                (response: MKLocalSearchResponse!, error: NSError!) in
                
                for item in response.mapItems as [MKMapItem]{
                    
                    println("Item name = \(item.name)")
                    println("Item phone number = \(item.phoneNumber)")
                    println("Item url = \(item.url)")
                    println("Item location = \(item.placemark.location)")
                    
                }
                
            }
    }
    
    func locationManager(manager: CLLocationManager!,
        didUpdateToLocation newLocation: CLLocation!,
        fromLocation oldLocation: CLLocation!){
            
            println("Latitude = \(newLocation.coordinate.latitude)")
            println("Longitude = \(newLocation.coordinate.longitude)")
            
    }
    
    func locationManager(manager: CLLocationManager!,
        didFailWithError error: NSError!){
            println("Location manager failed with error = \(error)")
    }
    
    /* The authorization status of the user has changed, we need to react
    to that so that if she has authorized our app to to view her location,
    we will accordingly attempt to do so */
    func locationManager(manager: CLLocationManager!,
        didChangeAuthorizationStatus status: CLAuthorizationStatus){
            
            print("The authorization status of location services is changed to: ")
            
            switch CLLocationManager.authorizationStatus(){
            case .Denied:
                println("Denied")
            case .NotDetermined:
                println("Not determined")
            case .Restricted:
                println("Restricted")
            default:
                showUserLocationOnMapView()
            }
            
    }
    
    /* Just a little method to help us display alert dialogs to the user */
    func displayAlertWithTitle(title: String, message: String){
        let controller = UIAlertController(title: title,
            message: message,
            preferredStyle: .Alert)
        
        controller.addAction(UIAlertAction(title: "OK",
            style: .Default,
            handler: nil))
        
        presentViewController(controller, animated: true, completion: nil)
        
    }
    
    /* We will call this method when we are sure that the user has given
    us access to her location */
    func showUserLocationOnMapView(){
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .Follow
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        /* Are location services available on this device? */
        if CLLocationManager.locationServicesEnabled(){
            
            /* Do we have authorization to access location services? */
            switch CLLocationManager.authorizationStatus(){
            case .Denied:
                /* No */
                displayAlertWithTitle("Not Determined",
                    message: "Location services are not allowed for this app")
            case .NotDetermined:
                /* We don't know yet, we have to ask */
                locationManager = CLLocationManager()
                if let manager = locationManager{
                    manager.delegate = self
                    manager.requestWhenInUseAuthorization()
                }
            case .Restricted:
                /* Restrictions have been applied, we have no access
                to location services */
                displayAlertWithTitle("Restricted",
                    message: "Location services are not allowed for this app")
            default:
                showUserLocationOnMapView()
            }
            
            
        } else {
            /* Location services are not enabled.
            Take appropriate action: for instance, prompt the
            user to enable the location services */
            println("Location services are not enabled")
        }
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        mapView = MKMapView()
    }
    
    
    /* Set up the map and add it to our view */
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.mapType = .Standard
        mapView.frame = view.frame
        mapView.delegate = self
        view.addSubview(mapView)
    }


}

