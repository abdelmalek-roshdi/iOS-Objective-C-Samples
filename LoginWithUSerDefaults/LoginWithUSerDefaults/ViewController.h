//
//  ViewController.h
//  LoginWithUSerDefaults
//
//  Created by Abd-Elmalek on 3/8/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import <UIKit/UIKit.h>
static NSUserDefaults* defaults;
@interface ViewController : UIViewController
- (IBAction)registerAction:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwrodTextField;

@end

