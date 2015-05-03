//
//  MainMenuViewController.m
//  Sili
//
//  Created by Boris  on 5/2/15.
//  Copyright (c) 2015 LLT. All rights reserved.
//

#import "MainMenuViewController.h"
#import "MapViewController.h"
#import "MyGalleriesViewController.h"

@interface MainMenuViewController ()

@end

@implementation MainMenuViewController

- (IBAction)goToMapView:(id)sender {
    
    MapViewController *mapViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"map"];
    [self.navigationController pushViewController:mapViewController animated:YES];
    
}

- (IBAction)goToMyGalleries:(id)sender {
    
    MyGalleriesViewController *galleriesViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"galleries"];
    [self.navigationController pushViewController:galleriesViewController animated:YES];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
