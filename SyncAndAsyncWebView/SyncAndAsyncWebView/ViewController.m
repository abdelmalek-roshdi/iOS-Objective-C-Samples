//
//  ViewController.m
//  SyncAndAsyncWebView
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
}


- (IBAction)syncAction:(UIButton *)sender {
    NSURL *url = [[NSURL alloc] initWithString:@"https://maktoob.yahoo.com/?p=us&guccounter=1"];
    NSString *webPage = [[NSString alloc] initWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
    //NSData *data = [[NSData alloc] initWithContentsOfURL:@"https://maktoob.yahoo.com/?p=us&guccounter=1"];
    //[_webView load:webPage baseURL:nil];
    [_webView loadHTMLString:webPage baseURL:nil];
}

- (IBAction)asyncAction:(UIButton *)sender {
    NSURL *url = [[NSURL alloc] initWithString:@"https://maktoob.yahoo.com/?p=us&guccounter=1"];
    NSURLRequest *recq = [[NSURLRequest alloc] initWithURL:url];
    [_webView loadRequest:recq];
}
@end
