//
//  ViewController.h
//  CalculatorUi
//
//  Created by Abd-Elmalek on 3/7/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Calculator.h"
@interface ViewController : UIViewController
@property Calculator *calc;
@property (weak, nonatomic) IBOutlet UITextField *firstNumberTextField;

@property (weak, nonatomic) IBOutlet UITextField *secondNumberTextField;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
- (IBAction)addAction:(UIButton *)sender;
- (IBAction)subAction:(UIButton *)sender;
- (IBAction)mulAction:(UIButton *)sender;
- (IBAction)divAction:(UIButton *)sender;

@end

