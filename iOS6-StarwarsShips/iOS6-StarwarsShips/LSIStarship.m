//
//  LSIStarship.m
//  iOS6-StarwarsShips
//
//  Created by Paul Solt on 7/19/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "LSIStarship.h"

@implementation LSIStarship

- (instancetype)initWithName:(NSString *)name
                       model:(NSString *)model
                  passengers:(int)passengers
               costInCredits:(long)costInCredits {
    self = [super init];
    if (self) {
        // NSMutableString -> NSString (constant!)
        _name = [name copy]; // Encapsulates the data, so you can't
        _model = [model copy]; // pass a NSMutableString into our class
        _passengers = passengers;
        _costInCredits = costInCredits;
    }
    return self;
}
@end
