//
//  NSObject+GMSMarker_GMUClusteritem.m
//  DevApp
//
//  Created by Alex Muramoto on 5/7/20.
//  Copyright © 2020 Google. All rights reserved.
//

#import "GMSMarker+GMUClusteritem.h"
#import <objc/runtime.h>

static char const *const kPopularity = "popularity";

@implementation GMSMarker (GMSMarker_GMUClusteritem)
- (void)setPopularity:(NSInteger)popularity
{
    objc_setAssociatedObject(self, &kPopularity, [[NSNumber alloc] initWithInteger:popularity], OBJC_ASSOCIATION_RETAIN);
}

- (NSInteger)popularity {
    return [(NSNumber *)objc_getAssociatedObject(self, &kPopularity) integerValue];
}
@end
