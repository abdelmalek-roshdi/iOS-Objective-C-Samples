//
//  ViewController.m
//  BouncingBallAnimation
//
//  Created by Abd-Elmalek on 3/9/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    [_ball.layer setCornerRadius:25];
    UIGravityBehavior *gravity =[[UIGravityBehavior alloc] initWithItems:@[_ball]];
    [_animator addBehavior:gravity];
    UICollisionBehavior *coll = [[UICollisionBehavior alloc] initWithItems:@[_ball]];
    [coll setCollisionDelegate:self];
    
    [coll setTranslatesReferenceBoundsIntoBoundary:YES];
    
    [_animator addBehavior:coll];
    
    UIDynamicItemBehavior *ballDynamicBehavior = [[UIDynamicItemBehavior alloc] initWithItems:@[_ball]];
    ballDynamicBehavior.elasticity = .9;
    [_animator addBehavior:ballDynamicBehavior];
}
-(void)collisionBehavior:(UICollisionBehavior *)behavior endedContactForItem:(id<UIDynamicItem>)item withBoundaryIdentifier:(id<NSCopying>)identifier{
    _ball.backgroundColor = UIColor.redColor;
    NSLog(@"hh");
}
- (void)collisionBehavior:(UICollisionBehavior *)behavior endedContactForItem:(id<UIDynamicItem>)item1 withItem:(id<UIDynamicItem>)item2{
    
}
@end
