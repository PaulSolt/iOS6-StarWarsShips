//
//  LSIStarship+NSJSONSerialization.m
//  iOS6-StarwarsShips
//
//  Created by Paul Solt on 7/19/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "LSIStarship+NSJSONSerialization.h"

@implementation LSIStarship (NSJSONSerialization)


- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        
        // Pull out the variables from the dictionary JSON keys
        NSString *shipName = dictionary[@"name"];
        NSString *shipModel = dictionary[@"model"];
        NSNumber *shipPassengers = dictionary[@"passengers"];
        NSNumber *shipCostInCredits = dictionary[@"cost_in_credits"];
        
        // Check all variables are not nil
        if (shipName != nil && shipModel && shipCostInCredits && shipPassengers) {
            // Forces only ships with all the information
            
            // Create a LSIStarship
            self = [self initWithName:shipName model:shipModel passengers:shipPassengers.intValue costInCredits:shipCostInCredits.longValue];
        } else {
            // TODO: proper error handling if there is a default value we can use
            
            NSLog(@"Invalid ship: %@ JSON object", shipName);
            self = nil;
        }
    }
    return self;
}


// to dictionary:
- (NSDictionary *)toDictionary {
    
    // TODO: Implement this method
    
    return nil;
}



@end
