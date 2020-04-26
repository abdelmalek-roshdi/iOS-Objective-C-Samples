//
//  ViewController.m
//  InputValidation
//
//  Created by Abd-Elmalek on 3/6/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *validationLabel;
@property (weak, nonatomic) IBOutlet UITextField *validationTextField;
@property NSNumberFormatter *formatter;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _formatter = [[NSNumberFormatter alloc] init];
    [_formatter setNumberStyle:NSNumberFormatterDecimalStyle];
    // Do any additional setup after loading the view.
}
- (IBAction)validationBtn:(id)sender {
        
        

NSNumber *number = [_formatter numberFromString:[_validationTextField text]];

    if (number) {
      [_validationLabel setText:@"is it a number !"];
    } else {
      [_validationLabel setText:@"is it a text !"];
    }
    
    
}


@end
