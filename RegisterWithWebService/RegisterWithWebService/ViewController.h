//
//  ViewController.h
//  RegisterWithWebService
//
//  Created by Abd-Elmalek on 3/11/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController <NSURLConnectionDelegate, NSURLConnectionDataDelegate>: UIViewController
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *phoneTextField;
@property (weak, nonatomic) NSMutableData *mutableData;
- (IBAction)registerActon:(UIButton *)sender;


@end

