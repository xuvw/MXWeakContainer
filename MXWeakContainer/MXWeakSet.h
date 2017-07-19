//
//  MXWeakSet.h
//  MXWeakContainer
//
//  Created by heke on 2017/7/19.
//  Copyright © 2017年 MX. All rights reserved.
//

#import <Foundation/Foundation.h>

__attribute__((objc_subclassing_restricted))
@interface MXWeakSet : NSObject

@property (readonly)            NSUInteger  count;

@property (readonly, copy)      NSArray    *allObjects;

@property (readonly, nonatomic) id          anyObject;

@property (readonly, copy)      NSSet      *setRepresentation;

- (id)member:(id)object;

- (NSEnumerator *)objectEnumerator;

- (void)addObject:(id)object;

- (void)removeObject:(id)object;

- (void)removeAllObjects;

- (BOOL)containsObject:(id)anObject;

@end
