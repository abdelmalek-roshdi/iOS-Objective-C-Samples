//
//  ViewController.h
//  NavigationControllerDemo
//
//  Created by Abd-Elmalek on 3/7/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ClearTextProtocol.h"
@interface ViewController : UIViewController <ClearTextProtocol>
@property NSString *name;
@property (weak, nonatomic) IBOutlet UITextField *nameLabel;
- (IBAction)nextBtn:(id)sender;


@end

