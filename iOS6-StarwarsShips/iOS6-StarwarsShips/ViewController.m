//
//  ViewController.m
//  iOS6-StarwarsShips
//
//  Created by Paul Solt on 7/19/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "ViewController.h"
#import "LSIStarWarsFetcher.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _starWarsFetcher = [[LSIStarWarsFetcher alloc] init];
    
    // fetch
    
    [_starWarsFetcher fetchStarshipsWithCompletion:^(NSArray * _Nonnull starships, NSError * _Nonnull error) {
        
        NSLog(@"Completition");
    }];
    
}


@end
