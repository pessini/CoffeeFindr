//
//  CoffeePlace.h
//  CoffeeFindr
//
//  Created by Leandro Pessini on 2/13/15.
//  Copyright (c) 2015 Brazuca Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface CoffeePlace : NSObject

@property MKMapItem *mapItem;
@property float milesDistance;

@end
