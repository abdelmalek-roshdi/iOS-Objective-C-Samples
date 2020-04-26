//
//  ImagesViewController.m
//  LocationDemo
//
//  Created by Abd-Elmalek on 3/22/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import "ImagesViewController.h"

@interface ImagesViewController ()

@end

@implementation ImagesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSUInteger nRows = 0;
    switch (section) {
        case 0:
            nRows = 4;
            break;
            
//        case 1:
//            nRows = ;
//            break;
    }
    return  nRows;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    switch (indexPath.row) {
        case 0:
            
            [cell.imageView sd_setImageWithURL:[NSURL URLWithString:@"https://i0.wp.com/cdn-prod.medicalnewstoday.com/content/images/articles/325/325253/assortment-of-fruits.jpg?w=50&h=50"]
                              placeholderImage:[UIImage imageNamed:@"placeholder.png"]];
            break;
            
            case 1:
                       
                       [cell.imageView sd_setImageWithURL:[NSURL URLWithString:@"https://image.shutterstock.com/image-photo/bright-spring-view-cameo-island-260nw-1048185397.jpg"]
                                         placeholderImage:[UIImage imageNamed:@"placeholder.png"]];
                       break;
            case 2:
                       
                       [cell.imageView sd_setImageWithURL:[NSURL URLWithString:@"https://www.bigstockphoto.com/images/homepage/module-6.jpg"]
                                         placeholderImage:[UIImage imageNamed:@"placeholder.png"]];
                       break;
            case 3:
                       
                       [cell.imageView sd_setImageWithURL:[NSURL URLWithString:@"https://image.shutterstock.com/image-photo/colorful-flower-on-dark-tropical-260nw-721703848.jpg"]
                                         placeholderImage:[UIImage imageNamed:@"placeholder.png"]];
                       break;
            
        
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
     ViewController *firstViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"viewController"];
    switch (indexPath.row) {
        case 0:
            firstViewController.myimageurl = @"https://i0.wp.com/cdn-prod.medicalnewstoday.com/content/images/articles/325/325253/assortment-of-fruits.jpg?w=50&h=50";
            break;
            
        case 1:
        firstViewController.myimageurl = @"https://image.shutterstock.com/image-photo/bright-spring-view-cameo-island-260nw-1048185397.jpg";
        break;
            
        case 2:
            firstViewController.myimageurl = @"https://www.bigstockphoto.com/images/homepage/module-6.jpg";
            break;
            
        case 3:
            firstViewController.myimageurl = @"https://image.shutterstock.com/image-photo/colorful-flower-on-dark-tropical-260nw-721703848.jpg";
            break;
    }
    NSLog(@"%@", firstViewController.myimageurl);
   // [self.navigationController pushViewController:firstViewController animated:true];
    [self.navigationController popViewControllerAnimated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
