//
//  ViewController.m
//  SearchWithTableView
//
//  Created by Abd-Elmalek on 3/11/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    ColleagueManager *cm = [ColleagueManager new];
    _males = cm.lisOfFriendsMales;
    _females = cm.lisOfFriendsFemales;

    
}

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
    //DetailViewController *dVC = [self.storyboard instantiateViewControllerWithIdentifier:@"detail_controller"];
    switch (indexPath.section) {
        case 0:
           // dVC.friend = [_males objectAtIndex:indexPath.row];
            break;
            
        case 1:
           // dVC.friend = [_females objectAtIndex:indexPath.row];
            break;
    }
    //[self.navigationController pushViewController:dVC animated:true];
}



@end
