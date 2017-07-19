//
//  MXWeakArray.h
//  MXWeakContainer
//
//  Created by heke on 2017/7/19.
//  Copyright © 2017年 MX. All rights reserved.
//

#import <Foundation/Foundation.h>

__attribute__((objc_subclassing_restricted))
@interface MXWeakArray : NSObject

@property (readonly, copy) NSArray    *allObjects;

@property (readonly)       NSUInteger  count;

- (id)objectAtIndex:(NSUInteger)index;

- (void)addObject:(id)object;

- (void)removeObjectAtIndex:(NSUInteger)index;

- (void)insertObject:(id)object atIndex:(NSUInteger)index;

- (void)replaceObjectAtIndex:(NSUInteger)index withPointer:(id)object;

- (void)compact;

@end
