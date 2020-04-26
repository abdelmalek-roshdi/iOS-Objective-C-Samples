//
//  DetailViewController.h
//  ColleaguesTable
//
//  Created by Abd-Elmalek on 3/7/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Fiend.h"
NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *phoneLabel;
@property (weak, nonatomic) IBOutlet UILabel *emailLabel;
@property Fiend *friend;

@end

NS_ASSUME_NONNULL_END
