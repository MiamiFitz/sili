//
//  LoginViewController.m
//  Sili
//
//  Created by Boris  on 5/2/15.
//  Copyright (c) 2015 LLT. All rights reserved.
//

#import "LoginViewController.h"
#import "MainMenuViewController.h"
#import <ParseFacebookUtilsV4/PFFacebookUtils.h>

@interface LoginViewController ()

@end

@implementation LoginViewController

- (IBAction)facebookLogin:(id)sender {
    
    [PFFacebookUtils logInInBackgroundWithPublishPermissions:@[ @"publish_actions" ] block:^(PFUser *user, NSError *error) {
        if (!user) {
            NSLog(@"Uh oh. The user cancelled the Facebook login.");
        } else {
            NSLog(@"User now has publish permissions!");
            [self goToMainMenu];
        }
    }];
    
   
}

- (void)goToMainMenu {
    
    MainMenuViewController *mainMenuViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"main"];
    [self.navigationController pushViewController:mainMenuViewController animated:YES];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    
    if ([PFUser currentUser]) {
        MainMenuViewController *mainMenuViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"main"];
        [self.navigationController pushViewController:mainMenuViewController animated:YES];
    }
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
