//
//  LoginViewController.m
//  LoginWithUSerDefaults
//
//  Created by Abd-Elmalek on 3/8/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    defaults = [NSUserDefaults standardUserDefaults];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    switch (buttonIndex) {
        case 0:
            [_resultLabel setText:@"try again"];
            break;
            
        default:
            break;
    }
}
- (IBAction)loginAction:(id)sender {
    NSString *email = [defaults objectForKey:@"email"];
    NSString *password = [defaults objectForKey:@"password"];
    if ([email isEqualToString:[_loginEmailTextField text]] && [password isEqualToString:[_loginPassordTextField text]]) {
        [_resultLabel setText:@"logged in successfully"];
    }else{
        [_resultLabel setText:@"login failed"];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Login Failed" message:@"email or password is incorrect" delegate:self cancelButtonTitle:nil otherButtonTitles:@"try again", nil];
        [alert show];
    }
}
@end
