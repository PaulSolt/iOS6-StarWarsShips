//
//  LSIStarWarsFetcher.h
//  iOS6-StarwarsShips
//
//  Created by Paul Solt on 7/19/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// NSArray *ships, NSError *error
//completion(ships, nil)
// BOOL success = completion(...)


typedef void(^LSIStarWarsFetcherHandler)(NSArray *starships, NSError *error);


@interface LSIStarWarsFetcher : NSObject


- (void)fetchStarshipsWithCompletion:(LSIStarWarsFetcherHandler)completionHandler;

@end

NS_ASSUME_NONNULL_END
