//
//  LoginViewController.m
//  LocationDemo
//
//  Created by Abd-Elmalek on 3/22/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _mmutableData = [NSMutableData new];
    // Do any additional setup after loading the view.
}




- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    printf("-----connection failed ");
}
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
             [_mmutableData appendData:data];
    NSLog(@"%@", data);
   
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    
   // if (_mutableData !=nil) {
        NSDictionary *serializatedObj = [NSJSONSerialization JSONObjectWithData:_mmutableData options:NSJSONReadingAllowFragments error:nil];
        NSString *status = [serializatedObj objectForKey:@"status"];
    NSDictionary *resultObj = [serializatedObj objectForKey:@"result"];
    NSString *name = [resultObj objectForKey:@"name"];
    NSString *phone = [resultObj objectForKey:@"phone"];
    NSString *age = [resultObj objectForKey:@"age"];
    NSString *imageUrl = [resultObj objectForKey:@"imageUrl"];
    NSString *lat = [resultObj objectForKey:@"latitude"];
    NSString *lon = [resultObj objectForKey:@"longitude"];
    
    [_nameLabel setText:name];
    [_phoneLabel setText:phone];
    //[_mAge setText:age];
    [_latLabel setText:lat];
    [_lonLabel setText:lon];
    [_urlLabel setText:imageUrl];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Status" message:status delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
        [alert show];
   // }else {
  //      printf("data finished nil");
    //}
    [_mmutableData setData:nil];
}
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    printf("didReceiveResponse");
    NSLog(@"%@", response);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



- (IBAction)action:(UIButton *)sender {
    NSString *phone = _mLoginTextField.text;
    NSString *uurl=[NSString stringWithFormat:@"http://jets.iti.gov.eg/FriendsApp/services/user/findUser?phone=%@", phone];
    NSLog(@"%@", uurl);
    NSURL *url =[[NSURL alloc] initWithString:uurl];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    [connection start];

}
@end
