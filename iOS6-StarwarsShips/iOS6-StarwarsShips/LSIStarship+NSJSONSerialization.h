//
//  LSIStarship+NSJSONSerialization.h
//  iOS6-StarwarsShips
//
//  Created by Paul Solt on 7/19/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "LSIStarship.h"

NS_ASSUME_NONNULL_BEGIN

@interface LSIStarship (NSJSONSerialization)


// from dictionary:
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;


// to dictionary:
- (NSDictionary *)toDictionary;

@end

NS_ASSUME_NONNULL_END
