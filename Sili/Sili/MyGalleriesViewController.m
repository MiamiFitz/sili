//
//  MyGalleriesViewController.m
//  Sili
//
//  Created by Boris  on 5/2/15.
//  Copyright (c) 2015 LLT. All rights reserved.
//

#import "MyGalleriesViewController.h"

@interface MyGalleriesViewController ()

@end

@implementation MyGalleriesViewController


- (IBAction)back:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    //UIButton *button = [FBSDKMessengerShareButton rectangularButtonWithStyle:FBSDKMessengerShareButtonStyleBlue];
    //[button addTarget:self action:@selector(sendMessage:) forControlEvents:UIControlEventTouchUpInside];
    //[self.view addSubview:button];
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
