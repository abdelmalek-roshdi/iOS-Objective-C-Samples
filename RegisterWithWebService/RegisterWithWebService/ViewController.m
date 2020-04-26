//
//  ViewController.m
//  RegisterWithWebService
//
//  Created by Abd-Elmalek on 3/11/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
NSMutableData *datta;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _mutableData = [NSMutableData new];
    datta =[NSMutableData new];
}


- (IBAction)registerActon:(UIButton *)sender {
    NSString *name = _nameTextField.text;
    NSString *phone = _phoneTextField.text;
//    NSMutableString *uurl = [[NSMutableString alloc] init];
//    [uurl appendString:@"http://jets.iti.gov.eg/FriendsApp/services/user/register?name="];
//    [uurl appendString:name];
//    [uurl appendString:@"&phone="];
//    [uurl appendString:phone];
//
    NSString *uurl=[NSString stringWithFormat:@"http://jets.iti.gov.eg/FriendsApp/services/user/register?name=%@&phone=%@", name, phone];
    NSURL *url =[[NSURL alloc] initWithString:uurl];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    [connection start];
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    printf("-----connection failed ");
}
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
             [_mutableData appendData:data];
    [datta appendData:data];
   
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    
   // if (_mutableData !=nil) {
        NSDictionary *serializatedObj = [NSJSONSerialization JSONObjectWithData:datta options:NSJSONReadingAllowFragments error:nil];
        NSString *status = [serializatedObj objectForKey:@"status"];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Status" message:status delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
        [alert show];
   // }else {
  //      printf("data finished nil");
    //}
    [datta setData:nil];
}
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    printf("didReceiveResponse");
}


@end
