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
