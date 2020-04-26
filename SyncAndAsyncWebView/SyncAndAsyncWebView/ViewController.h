//
//  ViewController.h
//  SyncAndAsyncWebView
//
//  Created by Abd-Elmalek on 3/11/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIWebView *webView;

- (IBAction)syncAction:(UIButton *)sender;
- (IBAction)asyncAction:(UIButton *)sender;

@end

