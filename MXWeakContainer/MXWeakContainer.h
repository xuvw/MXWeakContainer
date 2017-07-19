//
//  MXWeakContainer.h
//  MXWeakContainer
//
//  Created by heke on 2017/7/19.
//  Copyright © 2017年 MX. All rights reserved.
//

#import <UIKit/UIKit.h>

#if __has_include(<MXWeakContainer/MXWeakArray.h>)
//! Project version number for MXWeakContainer.
FOUNDATION_EXPORT double MXWeakContainerVersionNumber;

//! Project version string for MXWeakContainer.
FOUNDATION_EXPORT const unsigned char MXWeakContainerVersionString[];

#import <MXWeakContainer/MXWeakArray.h>
#import <MXWeakContainer/MXWeakDictionary.h>
#import <MXWeakContainer/MXWeakSet.h>

#else 

#import "MXWeakArray"
#import "MXWeakDictionary.h"
#import "MXWeakSet.h"
#endif
