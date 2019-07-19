//
//  LSIStarship.h
//  iOS6-StarwarsShips
//
//  Created by Paul Solt on 7/19/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIStarship : NSObject

// nonatomic, atomic, strong, weak, class, readonly, readwrite, copy
// assign = default for primitive (int, long, float ...)

@property (nonatomic, readonly, copy) NSString *name;

// Because it's readonly it will only generate the getter + instance variable
// 1. getter
//- (NSString *)name;
// 2. instance variable
// NSString *_name;

@property (nonatomic, readonly, copy) NSString *model;
@property (nonatomic, readonly) int passengers;
@property (nonatomic, readonly) long costInCredits;

//@property NSDecimalNumber cost; // Better for currency

- (instancetype)initWithName:(NSString *)name
                       model:(NSString *)model
                  passengers:(int)passengers
               costInCredits:(long)costInCredits;


@end

NS_ASSUME_NONNULL_END
