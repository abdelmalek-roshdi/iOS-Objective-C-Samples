//
//  ViewController.h
//  LocationDemo
//
//  Created by Abd-Elmalek on 3/22/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "MycustomAnnotation.h"
#import <CoreLocation/CoreLocation.h>
@interface ViewController : UIViewController <CLLocationManagerDelegate, MKMapViewDelegate, NSURLConnectionDelegate, NSURLConnectionDataDelegate>
@property CLLocationManager *locationManager;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *phoneTextField;
@property (weak, nonatomic) IBOutlet UITextField *ageTextField;
@property (weak, nonatomic) IBOutlet MKMapView *map;
@property MycustomAnnotation *annotation;
@property (strong, nonatomic) NSMutableData *mutableData;
@property (nonatomic) NSString *lat;
@property (nonatomic) NSString *lon;
@property NSString *imageURL;
@property NSString *myimageurl;
- (IBAction)touch:(id)sender;
- (IBAction)actionRegister:(UIButton *)sender;
- (IBAction)actionLogin:(UIButton *)sender;
- (IBAction)actionChoosePhoto:(UIButton *)sender;

@end

