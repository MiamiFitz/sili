//
//  GalleryViewController.m
//  Sili
//
//  Created by Boris  on 5/2/15.
//  Copyright (c) 2015 LLT. All rights reserved.
//

#import "GalleryViewController.h"
#import <FBSDKMessengerShareKit/FBSDKMessengerShareKit.h>

@interface GalleryViewController ()

@end

@implementation GalleryViewController

- (IBAction)sendMessage:(id)sender {
    
    
    if ([FBSDKMessengerSharer messengerPlatformCapabilities] & FBSDKMessengerPlatformCapabilityImage) {
        UIImage *image = [UIImage imageNamed:@"elephant.jpg"];
        
        [FBSDKMessengerSharer shareImage:image withOptions:nil];
    }
    
}

- (IBAction)back:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
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
