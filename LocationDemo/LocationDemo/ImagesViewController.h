//
//  ImagesViewController.h
//  LocationDemo
//
//  Created by Abd-Elmalek on 3/22/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import <SDWebImage/SDWebImage.h>
NS_ASSUME_NONNULL_BEGIN

@interface ImagesViewController : UIViewController
@property ViewController *firstViewController;
@property (nonatomic) UIImageView *sdWebImage;
@end

NS_ASSUME_NONNULL_END
