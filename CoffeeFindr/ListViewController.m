//
//  ListViewController.m
//  CoffeeFindr
//
//  Created by Leandro Pessini on 2/13/15.
//  Copyright (c) 2015 Brazuca Labs. All rights reserved.
//

#import "ListViewController.h"
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface ListViewController () <CLLocationManagerDelegate>

@property CLLocationManager *locationManager;
@property CLLocation *currentLocation;

@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.locationManager = [CLLocationManager new];
    self.locationManager.delegate = self;
    [self updateCurrentLocation];
}

- (void)updateCurrentLocation
{
    [self.locationManager requestAlwaysAuthorization];
    [self.locationManager startUpdatingLocation];
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    self.currentLocation =  locations.firstObject;
    NSLog(@"%@", self.currentLocation);
    [self.locationManager stopUpdatingLocation];
}


@end
