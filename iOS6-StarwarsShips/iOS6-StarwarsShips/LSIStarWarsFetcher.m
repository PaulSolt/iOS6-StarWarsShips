//
//  LSIStarWarsFetcher.m
//  iOS6-StarwarsShips
//
//  Created by Paul Solt on 7/19/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "LSIStarWarsFetcher.h"
#import "LSIStarship.h"
#import "LSIStarship+NSJSONSerialization.h"

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
        
        if (error) {
            completionHandler(nil, error);
            return;
        }
        
        if (data) {
            
            // parse the data
            
            NSError *jsonError = nil;
            
            NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
            
            if (jsonError) {
                completionHandler(nil, jsonError);
                return;
            }
            
            NSArray *results = json[@"results"];
            
            NSLog(@"Results: count: %lu", results.count);
            
            NSMutableArray *ships = [[NSMutableArray alloc] init];
            
            // Use dictionary method to parse the dictionaries in results
            for (NSDictionary *shipDictionary in results) {
                
                LSIStarship *ship = [[LSIStarship alloc] initWithDictionary:shipDictionary];
                
                if (ship) {
                    // Valid ship, append it to array
                    [ships addObject:ship];
                }
                
// Save to disk
//                NSDictionary *dict = [ship toDictionary];
//                NSData *data1 = [NSJSONSerialization dataWithJSONObject:dict options:0 error:jsonError];
//                [data1 writeToFile:<#(nonnull NSString *)#> atomically:<#(BOOL)#>]
                
            }
            completionHandler(ships, nil);
            
        } else {
            
            // TODO: Setup a NSError
//            NSError *dataError = [NSError errorWithDomain:(nonnull NSErrorDomain) code:<#(NSInteger)#> userInfo:<#(nullable NSDictionary<NSErrorUserInfoKey,id> *)#>]
//            completionHandler(nil, )
        }
        
        
        
    }] resume];
    
    // Call the completion handler
}


@end
