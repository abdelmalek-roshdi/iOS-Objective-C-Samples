//
//  TableViewController.m
//  ColleaguesTable
//
//  Created by Abd-Elmalek on 3/7/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ColleagueManager *cm = [ColleagueManager new];
    _males = cm.lisOfFriendsMales;
    _females = cm.lisOfFriendsFemales;
    
  
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSUInteger nRows = 0;
    switch (section) {
        case 0:
            nRows = [_males count];
            break;
            
        case 1:
            nRows = [_females count];
            break;
    }
    return  nRows;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    switch (indexPath.section) {
        case 0:
            cell.textLabel.text = [[_males objectAtIndex:indexPath.row] name];
            [cell.imageView sd_setImageWithURL:[NSURL URLWithString:@"https://i0.wp.com/cdn-prod.medicalnewstoday.com/content/images/articles/325/325253/assortment-of-fruits.jpg?w=50&h=50"]
                              placeholderImage:[UIImage imageNamed:@"placeholder.png"]];
            break;
            
        case 1:
            cell.textLabel.text = [[_females objectAtIndex:indexPath.row] name];
            [cell.imageView sd_setImageWithURL:[NSURL URLWithString:@"https://i0.wp.com/cdn-prod.medicalnewstoday.com/content/images/articles/325/325253/assortment-of-fruits.jpg?w=50&h=50"]
            placeholderImage:[UIImage imageNamed:@"placeholder.png"]];
            break;
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    DetailViewController *dVC = [self.storyboard instantiateViewControllerWithIdentifier:@"detail_controller"];
    switch (indexPath.section) {
        case 0:
            dVC.friend = [_males objectAtIndex:indexPath.row];
            break;
            
        case 1:
            dVC.friend = [_females objectAtIndex:indexPath.row];
            break;
    }
    [self.navigationController pushViewController:dVC animated:true];
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
