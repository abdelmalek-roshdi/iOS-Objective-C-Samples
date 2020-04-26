//
//  DetailViewController.m
//  ToDoListApp
//
//  Created by Abd-Elmalek on 3/23/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import "DetailViewController.h"
#import "EditViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _task = [NSKeyedUnarchiver unarchiveObjectWithData:_detailTask];
    
    [self setData];
   
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)eidtAction:(UIButton *)sender {
   EditViewController *eVC = [self.storyboard instantiateViewControllerWithIdentifier:@"edit_viewController"];
    eVC.task = _task;
    eVC.dVC = self;
    [self.navigationController pushViewController:eVC animated:true];
}

- (void)setData{
    [_nameLabel setText:_task.todoName];
          [_desclabel setText:_task.desc];
          if ([_task.priority isEqualToString:@"high"]) {
              _priorityLabel.textColor = UIColor.redColor;
                  [_priorityLabel setText:@"High Priority"];
          }else if([_task.priority isEqualToString:@"med"]){
                  _priorityLabel.textColor = UIColor.orangeColor;
                  [_priorityLabel setText:@"Medium Priority"];
          }else{
              _priorityLabel.textColor = UIColor.greenColor;
                  [_priorityLabel setText:@"Low Priority"];
          }
          
          NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
          [dateFormat setDateFormat:@"dd/MM/yyyy"];
          NSString *dateString = [dateFormat stringFromDate:_task.creationDate];
          [_dateLabel setText:dateString];
          if ([_task.inprogress isEqualToString:@"true"]) {
              [_inProgressSwitch setOn:true animated:true];
              [_doneSwitch setOn:false animated:true];
          }
          if ([_task.done isEqualToString:@"true"]) {
              [_inProgressSwitch setOn:false animated:true];
              [_doneSwitch setOn:true animated:true];
          }
}
- (void)updateData{
    [self setData];
}
@end
