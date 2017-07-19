//
//  MXWeakDictionary.m
//  MXWeakContainer
//
//  Created by heke on 2017/7/19.
//  Copyright © 2017年 MX. All rights reserved.
//

#import "MXWeakDictionary.h"

@interface MXWeakDictionary ()
{
    NSMapTable  *_mapTable;
}
@end

@implementation MXWeakDictionary

- (instancetype)init {
    
    self = [super init];
    if (self) {
        
        _mapTable = [NSMapTable strongToWeakObjectsMapTable];
    }
    
    return self;
}

- (id)objectForKey:(id)aKey {
    if (!aKey) {
        return nil;
    }
    return [_mapTable objectForKey:aKey];
}

- (void)removeObjectForKey:(id)aKey {
    if (!aKey) {
        return;
    }
    [_mapTable removeObjectForKey:aKey];
}

- (void)setObject:(id)anObject forKey:(id)aKey {
    if (!anObject || !aKey) {
        return;
    }
    [_mapTable setObject:anObject forKey:aKey];
}

- (NSEnumerator *)keyEnumerator {
    
    return [_mapTable keyEnumerator];
}

- (NSEnumerator *)objectEnumerator {
    
    return [_mapTable objectEnumerator];
}

- (void)removeAllObjects {
    
    [_mapTable removeAllObjects];
}

- (NSDictionary *)dictionaryRepresentation {
    
    return [_mapTable dictionaryRepresentation];
}

@synthesize count = _count;
- (NSUInteger)count {
    
    return _mapTable.count;
}

- (NSString *)description {
    
    return [NSString stringWithFormat:@"%@", _mapTable.dictionaryRepresentation];
}

@end
