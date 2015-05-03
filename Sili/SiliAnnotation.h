//
//  SiliAnnotation.h
//  Sili
//
//  Created by Boris  on 5/3/15.
//  Copyright (c) 2015 LLT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface SiliAnnotation : NSObject <MKAnnotation>

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;
@property (nonatomic, copy) NSString *title;

-(id)initWithTitle:(NSString *)newTitle Location:(CLLocationCoordinate2D)location;
-(MKAnnotationView *)annotationView;

@end
