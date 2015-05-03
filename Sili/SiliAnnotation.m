//
//  SiliAnnotation.m
//  Sili
//
//  Created by Boris  on 5/3/15.
//  Copyright (c) 2015 LLT. All rights reserved.
//

#import "SiliAnnotation.h"

@implementation SiliAnnotation

-(id)initWithTitle:(NSString *)newTitle Location:(CLLocationCoordinate2D)location {
    
    self = [super init];
    
    if (self) {
        _title = newTitle;
        _coordinate = location;
    }
    
    return self;
}

-(MKAnnotationView *)annotationView {
    
    MKAnnotationView *annotationView = [[MKAnnotationView alloc] initWithAnnotation:self reuseIdentifier:@"siliAnnotation"];
    
    annotationView.enabled = YES;
    annotationView.canShowCallout = YES;
    annotationView.image = [UIImage imageNamed:@""];
    annotationView.rightCalloutAccessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    
    return annotationView;
}

@end
