//
//  MapViewController.m
//  Sili
//
//  Created by Boris  on 5/2/15.
//  Copyright (c) 2015 LLT. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController

@synthesize theMapView;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    locationManager = [[CLLocationManager alloc] init];
    locationManager.delegate = self;
    if ([locationManager respondsToSelector:@selector(requestWhenInUseAuthorization)]) {
        [locationManager requestWhenInUseAuthorization];
    }
    locationManager.desiredAccuracy =  kCLLocationAccuracyThreeKilometers;
    [locationManager startUpdatingLocation];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - CLLocation Manager Delegate

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    NSLog(@"didFailWithError: %@", error);
    UIAlertView *errorAlert = [[UIAlertView alloc]
                               initWithTitle:@"Error" message:@"Failed to Get Your Location" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [errorAlert show];
}

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation {
    
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    span.latitudeDelta = 0.005;
    span.longitudeDelta = 0.005;
    CLLocationCoordinate2D location;
    location.latitude = newLocation.coordinate.latitude;
    location.longitude = newLocation.coordinate.longitude;
    region.span = span;
    region.center = location;
    MKPointAnnotation *myAnnotation = [[MKPointAnnotation alloc] init];
    myAnnotation.coordinate = newLocation.coordinate;
    NSLog(@"coordinate:%f",newLocation.coordinate.latitude);
    myAnnotation.title = @"New Gallery";
    
    [theMapView addAnnotation:myAnnotation];
    
    [theMapView setRegion:region animated:YES];
    
    
    
}

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation {
    
    NSLog(@"AQUI");
    if (annotation == mapView.userLocation)
    {
        
        
        MKPinAnnotationView *annView=[[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:nil];
        annView.pinColor = MKPinAnnotationColorRed;
        annView.animatesDrop=TRUE;
        annView.canShowCallout = YES;
        annView.calloutOffset = CGPointMake(-5, 5);
        return annView;;
        
    } else return nil;
    
}

- (void)mapView:(MKMapView *)mapView didSelectAnnotationView:(MKAnnotationView *)view {
    
    UIAlertView * alert =[[UIAlertView alloc ] initWithTitle:@"Add Gallery"
                                                     message:@"Do you want to add this Gallery"
                                                    delegate:self
                                           cancelButtonTitle:@"OK"
                                           otherButtonTitles: @"Cancel",nil];
    [alert show];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
