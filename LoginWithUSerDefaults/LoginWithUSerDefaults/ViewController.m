//
//  ViewController.m
//  LoginWithUSerDefaults
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
}
+ (void)initialize
{
    defaults = [NSUserDefaults standardUserDefaults];
}


- (IBAction)registerAction:(UIButton *)sender {
    [defaults setObject:[_emailTextField text] forKey:@"email"];
    [defaults setObject:[_passwrodTextField text] forKey:@"password"];
    
}
@end
