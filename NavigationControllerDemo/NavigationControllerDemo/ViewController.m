//
//  ViewController.m
//  NavigationControllerDemo
//
//  Created by Abd-Elmalek on 3/7/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()

@end

@implementation ViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (void)clearTexxt{
    [_nameLabel setText:@""];
}


- (IBAction)nextBtn:(id)sender {
    SecondViewController *svc =[self.storyboard instantiateViewControllerWithIdentifier:@"svc"];
    svc.name = [_nameLabel text];
    svc.firstView = self;
    [self.navigationController pushViewController:svc animated:true];
    
}
@end
