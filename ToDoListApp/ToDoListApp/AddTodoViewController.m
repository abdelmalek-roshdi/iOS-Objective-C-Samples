//
//  AddTodoViewController.m
//  ToDoListApp
//
//  Created by Abd-Elmalek on 3/23/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import "AddTodoViewController.h"

@interface AddTodoViewController ()

@end

@implementation AddTodoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _taskToAdd = [Task new];
    _taskToAdd.priority = @"med";
    
    _mainDefaults =[NSUserDefaults standardUserDefaults];
    _mainTasks = [[_mainDefaults objectForKey:@"mtasks"] mutableCopy];
    if (_mainTasks == nil) {
        _mainTasks = [NSMutableArray new];
    }
}
- (void)viewWillAppear:(BOOL)animated{
    _mainTasks = [[_mainDefaults objectForKey:@"mtasks"] mutableCopy];
    if (_mainTasks == nil) {
        _mainTasks = [NSMutableArray new];
    }
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)highSwitch:(UISwitch *)sender {
    if (sender.isOn) {
        [_medM setOn:false animated:true];
        [_lowM setOn:false animated:true];
        _taskToAdd.priority = @"high";
    }
}

- (IBAction)medSwitch:(UISwitch *)sender {
    if (sender.isOn) {
        [_highM setOn:false animated:true];
        [_lowM setOn:false animated:true];
        _taskToAdd.priority = @"med";
    }
}

- (IBAction)lowSwitch:(UISwitch *)sender {
    if (sender.isOn) {
        [_medM setOn:false animated:true];
        [_highM setOn:false animated:true];
        _taskToAdd.priority = @"low";
    }
}

- (IBAction)addAction:(UIButton *)sender {
    _taskToAdd.todoName = _todoNameTextField.text;
    _taskToAdd.desc = _todoDescriptionTextField.text;
    _taskToAdd.creationDate = NSDate.date;
    _taskToAdd.id = _mainTasks.count+1;
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:_taskToAdd];
    [_mainTasks addObject:data];
    [_mainDefaults setObject:_mainTasks forKey:@"mtasks"];
    [self.navigationController popViewControllerAnimated:YES];
}
@end
