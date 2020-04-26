//
//  EditViewController.h
//  ToDoListApp
//
//  Created by Abd-Elmalek on 3/23/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Task.h"
#import "DetailViewController.h"
NS_ASSUME_NONNULL_BEGIN

@interface EditViewController : UIViewController <UIAlertViewDelegate>
@property Task *task;
@property NSUserDefaults *defaults;
@property NSMutableArray *mainTasks;
@property DetailViewController *dVC;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *descTextField;
@property (weak, nonatomic) IBOutlet UISwitch *highM;
@property (weak, nonatomic) IBOutlet UISwitch *medM;
@property (weak, nonatomic) IBOutlet UISwitch *lowM;
@property (weak, nonatomic) IBOutlet UISwitch *inprogressM;
@property (weak, nonatomic) IBOutlet UISwitch *doneM;
- (IBAction)highSwitch:(UISwitch *)sender;
- (IBAction)medSwitch:(UISwitch *)sender;
- (IBAction)lowSwitch:(UISwitch *)sender;
- (IBAction)improgressSwitch:(UISwitch *)sender;
- (IBAction)doneSwitch:(UISwitch *)sender;
- (IBAction)doneAction:(UIButton *)sender;
- (IBAction)cancelAction:(UIButton *)sender;
-(void)initViews;
@end

NS_ASSUME_NONNULL_END
