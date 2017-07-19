//
//  MXWeakSet.m
//  MXWeakContainer
//
//  Created by heke on 2017/7/19.
//  Copyright © 2017年 MX. All rights reserved.
//

#import "MXWeakSet.h"

@interface MXWeakSet () {
    
    NSHashTable  *_hashTable;
}

@end

@implementation MXWeakSet

- (instancetype)init {
    
    self = [super init];
    if (self) {
        
        _hashTable = [NSHashTable weakObjectsHashTable];
    }
    
    return self;
}

- (id)member:(id)object {
    if (!object) {
        return nil;
    }
    return [_hashTable member:object];
}

- (NSEnumerator *)objectEnumerator {
    
    return [_hashTable objectEnumerator];
}

- (void)addObject:(id)object {
    if (!object) {
        return;
    }
    [_hashTable addObject:object];
}

- (void)removeObject:(id)object {
    if (!object) {
        return;
    }
    [_hashTable removeObject:object];
}

- (void)removeAllObjects {
    
    [_hashTable removeAllObjects];
}

- (BOOL)containsObject:(id)anObject {
    if (!anObject) {
        return NO;
    }
    return [_hashTable containsObject:anObject];
}

@synthesize count = _count;
- (NSUInteger)count {
    
    return _hashTable.count;
}

@synthesize allObjects = _allObjects;
- (NSArray *)allObjects {
    
    return [_hashTable allObjects];
}

@synthesize anyObject = _anyObject;
- (id)anyObject {
    
    return [_hashTable anyObject];
}

@synthesize setRepresentation = _setRepresentation;
- (NSSet *)setRepresentation {
    
    return [_hashTable setRepresentation];
}

- (NSString *)description {
    
    return [NSString stringWithFormat:@"%@", _hashTable.allObjects];
}

@end
