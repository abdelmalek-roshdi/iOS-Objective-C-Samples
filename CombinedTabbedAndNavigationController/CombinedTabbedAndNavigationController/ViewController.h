//
//  ViewController.h
//  CombinedTabbedAndNavigationController
//
//  Created by Abd-Elmalek on 3/8/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstViewController.h"
@interface ViewController : UIViewController
@property UISwipeGestureRecognizer *geasture;
- (IBAction)goToThird:(UIButton *)sender;

-(void)next;
@end

