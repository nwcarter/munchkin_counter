//
//  GCGlobalVaribles.h
//  GameCounter
//
//  Created by Nathan Carter on 12/7/14.
//  Copyright (c) 2014 Nathan Carter. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GCGlobalVaribles : NSObject
{
    NSString *stringValue;
    int characterAttack;
}

@property(nonatomic) NSString *stringValue;
@property(nonatomic) int characterAttack;

+(GCGlobalVaribles *) getInstance;

@end
