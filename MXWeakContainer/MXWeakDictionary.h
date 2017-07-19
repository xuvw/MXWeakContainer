//
//  MXWeakDictionary.h
//  MXWeakContainer
//
//  Created by heke on 2017/7/19.
//  Copyright © 2017年 MX. All rights reserved.
//

#import <Foundation/Foundation.h>

__attribute__((objc_subclassing_restricted))
@interface MXWeakDictionary : NSObject

@property (readonly) NSUInteger count;

- (id)objectForKey:(id)aKey;

- (void)removeObjectForKey:(id)aKey;

- (void)setObject:(id)anObject forKey:(id)aKey;

- (NSEnumerator *)keyEnumerator;

- (NSEnumerator *)objectEnumerator;

- (void)removeAllObjects;

- (NSDictionary *)dictionaryRepresentation;

@end
