//
//  ViewController.m
//  CombinedTabbedAndNavigationController
//
//  Created by Abd-Elmalek on 3/8/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _geasture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(next)];
    _geasture.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:_geasture];
}

- (void)next{
    [self.tabBarController setSelectedIndex:1];
}
- (IBAction)goToThird:(UIButton *)sender {
    FirstViewController *f = [self.storyboard instantiateViewControllerWithIdentifier:@"m_third"];
    [self.navigationController pushViewController:f animated:YES];
}
@end
