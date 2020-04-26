//
//  ViewController.h
//  ToDoListApp
//
//  Created by Abd-Elmalek on 3/23/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Task.h"
#import "DetailViewController.h"
@interface ViewController : UIViewController<UISearchBarDelegate,UISearchDisplayDelegate,UISearchControllerDelegate>
@property NSMutableArray *mainTasks;
@property NSMutableArray *searchResults;
@property NSUserDefaults *mainDefaults;
@property Boolean filtered;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@end

