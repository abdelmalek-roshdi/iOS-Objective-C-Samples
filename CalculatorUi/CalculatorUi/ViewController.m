//
//  ViewController.m
//  CalculatorUi
//
//  Created by Abd-Elmalek on 3/7/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _calc = [Calculator new];
}


- (IBAction)addAction:(UIButton *)sender {
    if (![[_firstNumberTextField text] isEqualToString:@""] && ![[_secondNumberTextField text] isEqualToString:@""]) {
        long n1 = [[_firstNumberTextField text] longLongValue];
        long n2 = [[_secondNumberTextField text] longLongValue];
        [_resultLabel setText:[NSString stringWithFormat:@"%f", [_calc add:n1 :n2]]];
    }
}

- (IBAction)subAction:(UIButton *)sender {
    if (![[_firstNumberTextField text] isEqualToString:@""] && ![[_secondNumberTextField text] isEqualToString:@""]) {
        long n1 = [[_firstNumberTextField text] longLongValue];
        long n2 = [[_secondNumberTextField text] longLongValue];
        [_resultLabel setText:[NSString stringWithFormat:@"%f", [_calc sub:n1 :n2]]];
    }
}

- (IBAction)mulAction:(UIButton *)sender {
    if (![[_firstNumberTextField text] isEqualToString:@""] && ![[_secondNumberTextField text] isEqualToString:@""]) {
        long n1 = [[_firstNumberTextField text] longLongValue];
        long n2 = [[_secondNumberTextField text] longLongValue];
        [_resultLabel setText:[NSString stringWithFormat:@"%f", [_calc mul:n1 :n2]]];
    }
}

- (IBAction)divAction:(UIButton *)sender {
    if (![[_firstNumberTextField text] isEqualToString:@""] && ![[_secondNumberTextField text] isEqualToString:@""]) {
        long n1 = [[_firstNumberTextField text] longLongValue];
        long n2 = [[_secondNumberTextField text] longLongValue];
        if (n2 != 0) {
            [_resultLabel setText:[NSString stringWithFormat:@"%f", [_calc div:n1 :n2]]];
        }else{
            [_resultLabel setText:@"cannot devide by zero"];
        }
    }
}
@end
