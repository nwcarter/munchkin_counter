//
//  GCGlobalVaribles.m
//  GameCounter
//
//  Created by Nathan Carter on 12/7/14.
//  Copyright (c) 2014 Nathan Carter. All rights reserved.
//

#import "GCGlobalVaribles.h"

@implementation GCGlobalVaribles
{
    GCGlobalVaribles *anotherSingle;
}

@synthesize stringValue;
@synthesize characterAttack;

+ (GCGlobalVaribles *) getInstance
{
    static GCGlobalVaribles *single = nil;
    
    @synchronized(self)
    {
        if (!single)
        {
            single = [[GCGlobalVaribles alloc] init];
        }
    }
    return single;
}

@end
