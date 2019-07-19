//
//  LSIStarWarsFetcher.m
//  iOS6-StarwarsShips
//
//  Created by Paul Solt on 7/19/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "LSIStarWarsFetcher.h"

@implementation LSIStarWarsFetcher


- (void)fetchStarshipsWithCompletion:(LSIStarWarsFetcherHandler)completionHandler {
    
    // URL
    NSString *path = @"https://swapi.co/api/starships/";
    
    // NSURLQueryItem
    
    
    // QueryItems
    
    // URLSession
    
    NSURL *url = [NSURL URLWithString:path];
    
    [[[NSURLSession sharedSession] dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        NSLog(@"Data: %@", data);
        
        
    }] resume];
    
    // Call the completion handler
}


@end
