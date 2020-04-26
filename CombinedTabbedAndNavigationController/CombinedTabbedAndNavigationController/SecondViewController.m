//
//  SecondViewController.m
//  CombinedTabbedAndNavigationController
//
//  Created by Abd-Elmalek on 3/9/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _geasture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(back)];
    _geasture.direction = UISwipeGestureRecognizerDirectionRight;
    [self.tabBarController setModalTransitionStyle:UIModalTransitionStylePartialCurl];
    [self.view addGestureRecognizer:_geasture];
    
}
- (void)back{
    [self.tabBarController setSelectedIndex:0];
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
