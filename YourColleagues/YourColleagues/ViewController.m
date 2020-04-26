//
//  ViewController.m
//  YourColleagues
//
//  Created by Abd-Elmalek on 3/6/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import "ViewController.h"
#import "ColleagueManager.h"
@interface ViewController ()
@property ColleagueManager *cm;
@property int counter;
@property (weak, nonatomic) IBOutlet UILabel *friendNameLabel;
- (IBAction)NextBtn:(id)sender;
- (IBAction)PrevBtn:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _cm = [ColleagueManager new];
    _counter = 0;
    [_friendNameLabel setText:[[_cm.lisOfFriends objectAtIndex:_counter] name]];
    
}


- (IBAction)NextBtn:(id)sender {
    _counter++;
    
    if (_counter == [_cm.lisOfFriends count]) {
        
        _counter = 0;
    }
    
    
    [_friendNameLabel setText:[[_cm.lisOfFriends objectAtIndex:_counter] name]];
    
    
}

- (IBAction)PrevBtn:(id)sender {
    _counter --;
    if (_counter == -1) {
        
        _counter = [_cm.lisOfFriends count] - 1;
    }
    
    [_friendNameLabel setText:[[_cm.lisOfFriends objectAtIndex:_counter] name]];
    
    
}
@end
