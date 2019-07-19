//
//  ViewController.m
//  iOS6-StarwarsShips
//
//  Created by Paul Solt on 7/19/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "ViewController.h"
#import "LSIStarWarsFetcher.h"
#import "LSIStarship.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _starWarsFetcher = [[LSIStarWarsFetcher alloc] init];
    
    // fetch
    
    [_starWarsFetcher fetchStarshipsWithCompletion:^(NSArray * _Nonnull starships, NSError * _Nonnull error) {
        
        if (error) {
            NSLog(@"Error: %@", error);
            return;
        }
        
        for (LSIStarship *ship in starships) {
            NSLog(@"Ship: \n%@", ship);
        }
        
        
    }];
    
    
    NSArray *array = @[@"John", @"Paul", @"Thomas"];
    NSMutableArray *people = [array mutableCopy];   // makes people a variable (var)
    
//    [array addObject:@"Johnathan"]; // doesn't work!
    
    [people addObject:@"Johnathan"];
    
    NSArray *array2 = [people copy]; // makes array2 constant (let)
    
}


@end
