//
//  DetailViewController.h
//  ToDoListApp
//
//  Created by Abd-Elmalek on 3/23/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Task.h"
#import "UpdateDataProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UIViewController <UpdateDataProtocol>
@property NSData *detailTask;
@property Task *task;

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *desclabel;
@property (weak, nonatomic) IBOutlet UILabel *priorityLabel;
@property (weak, nonatomic) IBOutlet UISwitch *inProgressSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *doneSwitch;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
- (IBAction)eidtAction:(UIButton *)sender;
-(void)setData;
@end

NS_ASSUME_NONNULL_END
