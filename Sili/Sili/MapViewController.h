//
//  MapViewController.h
//  Sili
//
//  Created by Boris  on 5/2/15.
//  Copyright (c) 2015 LLT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface MapViewController : UIViewController <CLLocationManagerDelegate, MKMapViewDelegate> {
    
    CLLocationManager *locationManager;
}

@property (nonatomic, strong) IBOutlet MKMapView *theMapView;

@end
