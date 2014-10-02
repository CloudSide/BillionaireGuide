//
//  G.m
//  BillionaireGuide
//
//  Created by Bruce on 14-5-22.
//  Copyright (c) 2014年 Apportable. All rights reserved.
//

#import "G.h"

@implementation G

static BOOL kSex;
static NSString *kNikename;
static NSUInteger kServerIndex = 0;
static NSArray *kServers = nil;


+ (NSArray *)servers {

    if (kServers) return kServers;
    
    
    //注意：思路灵活一点，有什么字段多想想：
    return @[
                @{
                    @"name" : @"1区富甲天下",
                    @"id" : @1,
                    @"state" : @0
                },
                @{
                    @"name" : @"2区富甲天下",
                    @"id" : @2,
                    @"state" : @0
                },
                @{
                    @"name" : @"3区富甲天下",
                    @"id" : @3,
                    @"state" : @0
                },
                @{
                    @"name" : @"4区富甲天下",
                    @"id" : @4,
                    @"state" : @0
                },
                @{
                    @"name" : @"5区富甲天下",
                    @"id" : @5,
                    @"state" : @0
                },
                @{
                    @"name" : @"6区富甲天下",
                    @"id" : @6,
                    @"state" : @0
                },
                @{
                    @"name" : @"7区富甲天下",
                    @"id" : @7,
                    @"state" : @0
                },
                @{
                    @"name" : @"8区富甲天下",
                    @"id" : @8,
                    @"state" : @0
                },
                @{
                    @"name" : @"9区富甲天下",
                    @"id" : @9,
                    @"state" : @0
                },
                @{
                    @"name" : @"10区富甲天下",
                    @"id" : @10,
                    @"state" : @0
                }
             ];
}

+ (void)setServers:(NSArray *)sers {
    
    kServers = sers;
}

+ (NSUInteger)serverIndex {
    
    return kServerIndex;
}

+ (void)setServerIndex:(NSUInteger)idx {

    kServerIndex = idx;
}

+ (BOOL)sex {
    
    return kSex;
}

+ (void)setSex:(BOOL)s {
    
    kSex = s;
}


+ (NSString *)nikename {

    return kNikename;
}

+ (void)setNikename:(NSString *)n {
    
    kNikename = n;
}

@end
