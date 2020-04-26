//
//  EditViewController.m
//  ToDoListApp
//
//  Created by Abd-Elmalek on 3/23/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import "EditViewController.h"

@interface EditViewController ()

@end

@implementation EditViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _defaults =[NSUserDefaults standardUserDefaults];
    _mainTasks = [[_defaults objectForKey:@"mtasks"] mutableCopy];
    [self initViews];
    NSNumber *myDoubleNumber = [NSNumber numberWithDouble:_task.id];
    NSLog(@"%@", [myDoubleNumber stringValue]);
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
    if(sender.isOn){
            _task.priority =@"high";
            [_medM setOn:false animated:true];
            [_lowM setOn:false animated:true];
    }
    
}

- (IBAction)medSwitch:(UISwitch *)sender {
    if (sender.isOn) {
        _task.priority =@"med";
        [_highM setOn:false animated:true];
        [_lowM setOn:false animated:true];
    }
}

- (IBAction)lowSwitch:(UISwitch *)sender {
    if (sender.isOn) {
        _task.priority =@"low";
        [_highM setOn:false animated:true];
        [_medM setOn:false animated:true];
    }

}

- (IBAction)improgressSwitch:(UISwitch *)sender {
    if (sender.isOn) {
        _task.inprogress = @"true";
        _task.done = @"false";
        [_doneM setOn:false animated:true];
    }
}

- (IBAction)doneSwitch:(UISwitch *)sender {
    if (sender.isOn) {
        _task.inprogress = @"false";
        _task.done = @"true";
        [_inprogressM setOn:false animated:true];
    }
}

- (IBAction)doneAction:(UIButton *)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Are you sure you want do edit this task!" message:nil delegate:self cancelButtonTitle:nil otherButtonTitles:@"yes", @"cancel", nil];
    [alert show];
    
   
}

- (IBAction)cancelAction:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)initViews{
    [_nameTextField setText:_task.todoName];
    [_descTextField setText:_task.desc];
    if ([_task.priority isEqualToString:@"high"]) {
        [_highM setOn:true animated:true];
        [_medM setOn:false animated:true];
        [_lowM setOn:false animated:true];
    }else if([_task.priority isEqualToString:@"med"]){
        [_highM setOn:false animated:true];
        [_medM setOn:true animated:true];
        [_lowM setOn:false animated:true];
    }else{
        [_highM setOn:false animated:true];
        [_medM setOn:false animated:true];
        [_lowM setOn:true animated:true];
    }
    if ([_task.inprogress isEqualToString:@"true"]) {
        [_inprogressM setOn:true animated:true];
        [_doneM setOn:false animated:true];
    }else if([_task.done isEqualToString:@"true"]){
        [_inprogressM setOn:false animated:true];
        [_doneM setOn:true animated:true];
    }
    
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSData *data;
    switch (buttonIndex) {
            
        case 0:
               _task.todoName = _nameTextField.text;
               _task.desc = _descTextField.text;
               data = [NSKeyedArchiver archivedDataWithRootObject:_task];
            for (int i =0; i <[_mainTasks count]; i++) {
                Task *task = [NSKeyedUnarchiver unarchiveObjectWithData:[_mainTasks objectAtIndex:i]];
                if (task.id == _task.id) {
                    [_mainTasks replaceObjectAtIndex:i withObject:data];
                }
            }
               [_defaults setObject:_mainTasks forKey:@"mtasks"];
               _dVC.task = _task;
               [_dVC updateData];
               [self.navigationController popViewControllerAnimated:YES];
            break;
            
        default:
            break;
    }
}
@end
