//
//  MXWeakArray.m
//  MXWeakContainer
//
//  Created by heke on 2017/7/19.
//  Copyright © 2017年 MX. All rights reserved.
//

#import "MXWeakArray.h"

@interface MXWeakArray ()
{
    NSPointerArray *_pointerArray;
}
@end

@implementation MXWeakArray

- (instancetype)init {
    
    self = [super init];
    if (self) {
        
        _pointerArray = [NSPointerArray pointerArrayWithOptions:NSPointerFunctionsWeakMemory];
    }
    
    return self;
}

- (id)objectAtIndex:(NSUInteger)index {
    
    return [_pointerArray pointerAtIndex:index];
}

- (void)addObject:(id)object {
    
    if (!object) {
        return;
    }
    [_pointerArray addPointer:(__bridge void *)(object)];
}

- (void)removeObjectAtIndex:(NSUInteger)index {
    if (index >= _pointerArray.count) {
        return;
    }
    [_pointerArray removePointerAtIndex:index];
}

- (void)insertObject:(id)object atIndex:(NSUInteger)index {
    if (index >= _pointerArray.count) {
        return;
    }
    [_pointerArray insertPointer:(__bridge void *)(object) atIndex:index];
}

- (void)replaceObjectAtIndex:(NSUInteger)index withPointer:(id)object {
    if (index >= _pointerArray.count) {
        return;
    }
    [_pointerArray replacePointerAtIndex:index withPointer:(__bridge void *)(object)];
}

- (void)compact {
    
    [_pointerArray compact];
}

@synthesize count = _count;
- (NSUInteger)count {
    
    return _pointerArray.count;
}

- (NSString *)description {
    
    return [NSString stringWithFormat:@"%@", _pointerArray.allObjects];
}

@synthesize allObjects = _allObjects;
- (NSArray *)allObjects {
    
    return _pointerArray.allObjects;
}

@end
