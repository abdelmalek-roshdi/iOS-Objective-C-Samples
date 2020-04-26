//
//  TableViewController.h
//  ColleaguesTable
//
//  Created by Abd-Elmalek on 3/7/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ColleagueManager.h"
#import "DetailViewController.h"
#import <SDWebImage/SDWebImage.h>
NS_ASSUME_NONNULL_BEGIN

@interface TableViewController : UITableViewController
@property NSArray *males;
@property NSArray *females;
@property UIImageView *SDImageView;
@end

NS_ASSUME_NONNULL_END
