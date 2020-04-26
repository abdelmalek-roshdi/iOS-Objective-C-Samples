//
//  LoginViewController.h
//  LoginWithUSerDefaults
//
//  Created by Abd-Elmalek on 3/8/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
static NSUserDefaults* defaults;
@interface LoginViewController : UIViewController <UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *loginPassordTextField;
@property (weak, nonatomic) IBOutlet UITextField *loginEmailTextField;
- (IBAction)loginAction:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end

NS_ASSUME_NONNULL_END
