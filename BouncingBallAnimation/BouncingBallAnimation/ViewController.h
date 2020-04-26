//
//  ViewController.h
//  BouncingBallAnimation
//
//  Created by Abd-Elmalek on 3/9/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UICollisionBehaviorDelegate>
@property (weak, nonatomic) IBOutlet UIView *ball;
@property (strong, nonatomic) UIDynamicAnimator *animator;

@end

