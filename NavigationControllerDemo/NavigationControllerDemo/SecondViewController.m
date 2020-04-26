//
//  SecondViewController.m
//  NavigationControllerDemo
//
//  Created by Abd-Elmalek on 3/7/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UILabel *seconLabel;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [_seconLabel setText:[@"hi "stringByAppendingString: _name]];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)doneBtn:(UIButton *)sender {
    [_firstView clearTexxt];
    [self.navigationController popViewControllerAnimated:YES];
}
@end
