//
//  ViewController.m
//  LocationDemo
//
//  Created by Abd-Elmalek on 3/22/20.
//  Copyright © 2020 Abd-Elmalek. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _annotation = [MycustomAnnotation new];
    _mutableData = [NSMutableData new];
    _locationManager = [CLLocationManager new];
    [_locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
    [_locationManager setDistanceFilter:kCLDistanceFilterNone];
    _locationManager.delegate = self;
    [_locationManager requestAlwaysAuthorization];
    [_locationManager startUpdatingLocation];
    
    CLLocationCoordinate2D location = [_locationManager location].coordinate;
    MycustomAnnotation *annotation = [MycustomAnnotation new];
    _lat = [[NSNumber numberWithDouble:location.latitude] stringValue];
    _lon = [[NSNumber numberWithDouble:location.longitude] stringValue];
    annotation.coordinate = location;
    annotation.title = @"Location";
    annotation.subtitle = @"Selected Location";
    [_map removeAnnotations:_map.annotations];
    [_map addAnnotation:annotation];
    printf("annotation added");
}


- (IBAction)touch:(id)sender {
    //if ([_map annotations].count > 0) {
      //  [_map removeAnnotation:[[_map annotations]firstObject]];
   // }
    [_map removeAnnotations:_map.annotations];
    CGPoint touchPoint = [sender locationInView:_map];
    CLLocationCoordinate2D touchLocation = [_map convertPoint:touchPoint toCoordinateFromView:_map];
    MycustomAnnotation *annotation = [MycustomAnnotation new];
    _lat = [[NSNumber numberWithDouble:touchLocation.latitude] stringValue];
    NSLog(@"%@", _lat);
    _lon = [[NSNumber numberWithDouble:touchLocation.longitude] stringValue];
    NSLog(@"%@", _lon);
    annotation.coordinate = touchLocation;
    annotation.title = @"Location";
    annotation.subtitle = @"Selected Location";
    [_map addAnnotation:annotation];
    
}

- (IBAction)actionRegister:(UIButton *)sender {
    
    NSString *name = _nameTextField.text;
    NSString *phone = _phoneTextField.text;
    NSString *age = _ageTextField.text;
   
    //http://jets.iti.gov.eg/FriendsApp/services/user/register?name=yourName&phone=yourPhone&age=YourAge&imageURL=yourImageURL&longitude=yourLongitude&latitude=yourLatitude
    
        NSString *uurl=[NSString stringWithFormat:@"http://jets.iti.gov.eg/FriendsApp/services/user/register?name=%@&phone=%@&age=%@&imageURL=%@&longitude=%@&latitude=%@", name, phone, age, _myimageurl,_lon, _lat];
    NSLog(@"%@ %s", uurl, "---------");
    NSLog(@"%@ %s", _myimageurl, "++++---------");
        NSURL *url =[[NSURL alloc] initWithString:uurl];
        NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
        NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
        [connection start];
}

- (IBAction)actionLogin:(UIButton *)sender {
}

- (IBAction)actionChoosePhoto:(UIButton *)sender {
}


- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    printf("-----connection failed ");
}
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
             [_mutableData appendData:data];
    
   
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    
   // if (_mutableData !=nil) {
        NSDictionary *serializatedObj = [NSJSONSerialization JSONObjectWithData:_mutableData options:NSJSONReadingAllowFragments error:nil];
        NSString *status = [serializatedObj objectForKey:@"status"];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Status" message:status delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
        [alert show];
   // }else {
  //      printf("data finished nil");
    //}
    [_mutableData setData:nil];
}
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    printf("didReceiveResponse");
}
- (void)mapView:(MKMapView *)mapView didSelectAnnotationView:(MKAnnotationView *)view{
    
}
- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations{
    CLLocation *location = [locations lastObject];
    printf("changing");
    MycustomAnnotation *annotation = [MycustomAnnotation new];
    _lat = [[NSNumber numberWithDouble:location.coordinate.latitude] stringValue];
    _lon = [[NSNumber numberWithDouble:location.coordinate.longitude] stringValue];
    NSLog(_lat);
    annotation.coordinate = location.coordinate;
    annotation.title = @"Location";
    annotation.subtitle = @"Selected Location";
    [_map addAnnotation:annotation];
    [_map setCenterCoordinate:location.coordinate];
    [_locationManager stopUpdatingLocation];
}
@end
