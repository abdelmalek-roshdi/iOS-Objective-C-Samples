//
//  ViewController.m
//  ToDoListApp
//
//  Created by Abd-Elmalek on 3/23/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController
//Task *task1 ;
//Task *task2 ;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _searchBar.delegate = self;
    
//    //self.searchDisplayController = [[UISearchDisplayController alloc]
//                  //           initWithSearchBar:_searchBar contentsController:self];
//
//    self.searchDisplayController.searchResultsTableView.dataSource = self;
//    self.searchDisplayController.searchResultsTableView.delegate = self;
//    self.searchDisplayController.delegate = self;
//  //  searchController.delegate = self;
//  //  searchController.searchResultsDataSource = self;
//  //  searchController.searchResultsDelegate = self;
//    self.searchDisplayController.searchResultsDataSource = self;
//    self.searchDisplayController.searchResultsDelegate = self;
//
//
    
//    searchController.delegate = self;
//    searchController.searchResultsDataSource = self;
//    searchController.searchResultsDelegate = self;
//
    _searchResults = [NSMutableArray new];
    _mainDefaults =[NSUserDefaults standardUserDefaults];
    _mainTasks = [[_mainDefaults objectForKey:@"mtasks"] mutableCopy];
    if (_mainTasks == nil) {
        _mainTasks = [NSMutableArray new];
    }
    
    
//    task1 = [Task new];
//    task1.name = @"task1";
//    task1.desc = @"desc1";
//    task1.priority = @"high";
//    task1.creationDate = NSDate.date;
//    task1.id = _mainTasks.count+1;
//    NSData *data1 = [NSKeyedArchiver archivedDataWithRootObject:task1];
//    [_mainTasks addObject:data1];
//    task2 = [Task new];
//    task2.name = @"task2";
//    task2.desc = @"desc2";
//    task2.priority = @"high";
//    task2.creationDate = NSDate.date;
//    task2.id = _mainTasks.count+1;
//    NSData *data2 = [NSKeyedArchiver archivedDataWithRootObject:task2];
//    
//    [_mainTasks addObject:data2];
//    [_mainDefaults setObject:_mainTasks forKey:@"mtasks"];
    
    
}
- (void)viewWillAppear:(BOOL)animated{
    _mainTasks = [[_mainDefaults objectForKey:@"mtasks"] mutableCopy];
    if (_mainTasks == nil) {
        _mainTasks = [NSMutableArray new];
    }
    [self.tableView reloadData];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSUInteger nRows = 0;
    switch (section) {
        case 0:
            if (_filtered) {
                nRows = [_searchResults count];
            }else{
                nRows = [_mainTasks count];
                
            }
            break;
            
        
    }
    return  nRows;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    NSData *current;
    Task *task;
    
    switch (indexPath.section) {
        case 0:
            
            if (_filtered) {
            current = [_searchResults objectAtIndex:indexPath.row];
            task = [NSKeyedUnarchiver unarchiveObjectWithData:current];
            //task = [_searchResults objectAtIndex:indexPath.row];
            
            }else{
                current = [_mainTasks objectAtIndex:indexPath.row];
                task = [NSKeyedUnarchiver unarchiveObjectWithData:current];
            }
            
            cell.textLabel.text = task.todoName;
            cell.detailTextLabel.text = task.desc;
            //[cell.imageView sd_setImageWithURL:[NSURL URLWithString:@"https://i0.wp.com/cdn-prod.medicalnewstoday.com/content/images/articles/325/325253/assortment-of-fruits.jpg?w=50&h=50"]
                            //  placeholderImage:[UIImage imageNamed:@"placeholder.png"]];
            break;
            
        
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    DetailViewController *dVC = [self.storyboard instantiateViewControllerWithIdentifier:@"detail_viewController"];
    switch (indexPath.section) {
        case 0:
            
            if (_filtered) {
                dVC.detailTask = [_searchResults objectAtIndex:indexPath.row];
            
            }else{
                dVC.detailTask = [_mainTasks objectAtIndex:indexPath.row];
                
            }
            break;
    }
    [self.navigationController pushViewController:dVC animated:true];
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    [_mainTasks removeObjectAtIndex:indexPath.row];
    [_mainDefaults setObject:_mainTasks forKey:@"mtasks"];
    [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
}
- (void)deleteRowsAtIndexPaths:(NSArray<NSIndexPath *> *)indexPaths
              withRowAnimation:(UITableViewRowAnimation)animation{
    
}
- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText{
//    [self filterContentForSearchText:searchText
//    scope:[[self.searchDisplayController.searchBar scopeButtonTitles]
//    objectAtIndex:[self.searchDisplayController.searchBar
//        selectedScopeButtonIndex]]];
    [_searchResults removeAllObjects];
    if (searchText.length == 0) {
        _filtered = false;
    }else{
        _filtered = true;
        for (NSData *data in _mainTasks) {
            Task *task = [NSKeyedUnarchiver unarchiveObjectWithData:data];
            NSRange nameRange = [task.todoName rangeOfString:searchText options:NSCaseInsensitiveSearch];
            if (nameRange.location != NSNotFound) {
                [_searchResults addObject:data];
            }
        }
        
    }
    [self.tableView reloadData];
}

//-(BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchString:(NSString *)searchString
//    {
//        [self filterContentForSearchText:searchString
//                scope:[[self.searchDisplayController.searchBar scopeButtonTitles]
//                objectAtIndex:[self.searchDisplayController.searchBar
//                    selectedScopeButtonIndex]]];
//        NSLog(@"calllll-++++++---");
//
//        return YES;
//    }
//- (void)filterContentForSearchText:(NSString*)searchText scope:(NSString*)scope
//{
//    NSPredicate *resultPredicate = [NSPredicate predicateWithFormat:@"name contains[c] %@", searchText];
//    NSMutableArray *temp =[NSMutableArray new];
//    for (NSData *data in _mainTasks) {
//        Task *task = [NSKeyedUnarchiver unarchiveObjectWithData:data];
//        [temp addObject:task]
//    }
//    _searchResults = [temp filteredArrayUsingPredicate:resultPredicate];
//}

@end
