//
//  ViewController.h
//  iOS6-StarwarsShips
//
//  Created by Paul Solt on 7/19/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LSIStarWarsFetcher;

@interface ViewController : UIViewController

@property (nonatomic) LSIStarWarsFetcher *starWarsFetcher;

@end

