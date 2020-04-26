//
//  SecondViewController.h
//  NavigationControllerDemo
//
//  Created by Abd-Elmalek on 3/7/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import "ViewController.h"
#import "ClearTextProtocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController
- (IBAction)doneBtn:(UIButton *)sender;
@property NSString *name;
@property id<ClearTextProtocol> firstView;
@end

NS_ASSUME_NONNULL_END
