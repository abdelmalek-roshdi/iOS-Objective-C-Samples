//
//  AddTodoViewController.h
//  ToDoListApp
//
//  Created by Abd-Elmalek on 3/23/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Task.h"
NS_ASSUME_NONNULL_BEGIN

@interface AddTodoViewController : UIViewController
@property Task *taskToAdd;
@property NSMutableArray *mainTasks;
@property NSUserDefaults *mainDefaults;
@property (weak, nonatomic) IBOutlet UISwitch *highM;
@property (weak, nonatomic) IBOutlet UISwitch *medM;
@property (weak, nonatomic) IBOutlet UISwitch *lowM;
@property (weak, nonatomic) IBOutlet UITextField *todoNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *todoDescriptionTextField;
- (IBAction)highSwitch:(UISwitch *)sender;
- (IBAction)medSwitch:(UISwitch *)sender;
- (IBAction)lowSwitch:(UISwitch *)sender;
- (IBAction)addAction:(UIButton *)sender;

@end

NS_ASSUME_NONNULL_END
