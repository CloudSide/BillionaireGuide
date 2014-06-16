//
//  Scene28.m
//  BillionaireGuide
//
//  Created by Bruce on 14-6-8.
//  Copyright (c) 2014年 Apportable. All rights reserved.
//

#import "Scene28.h"
#import "AppDelegate.h"
#import "RootViewController.h"

@implementation Scene28

- (void)didLoadFromCCB {
    // tell this scene to accept touches
    self.userInteractionEnabled = TRUE;
}

- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    
    [[OALSimpleAudio sharedInstance] stopBg];
    
    [(AppController *)[[UIApplication sharedApplication] delegate] window].rootViewController = [[RootViewController alloc] init];
}

@end
