//
//  ViewController.m
//  CopyText
//
//  Created by Abd-Elmalek on 3/6/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, atomic) IBOutlet UITextField *mTextField;
@property (weak, atomic) IBOutlet UILabel *mLabel;
-(IBAction)pasteText:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)pasteText:(id)sender {
    [_mLabel setText:[_mTextField text]];
}
@end
