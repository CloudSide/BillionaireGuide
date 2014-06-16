//
//  Scene6.m
//  BillionaireGuide
//
//  Created by Bruce on 14-5-22.
//  Copyright (c) 2014年 Apportable. All rights reserved.
//

#import "Scene6.h"
#import "Scene7.h"
#import "AppDelegate.h"

@class AppController;

@implementation Scene6

- (void)button1 {
    
    [[OALSimpleAudio sharedInstance] playEffect:@"button_down.mp3"];
    
    [G setSex:YES];
    __autoreleasing Scene7 *gameplayScene = (Scene7 *)[CCBReader loadAsScene:@"Scene7"];
    [[CCDirector  sharedDirector] replaceScene:gameplayScene withTransition:[CCTransition transitionFadeWithDuration:.8f]];
}

- (void)button2 {
    
    [[OALSimpleAudio sharedInstance] playEffect:@"button_down.mp3"];
    
    [G setSex:NO];
    __autoreleasing Scene7 *gameplayScene = (Scene7 *)[CCBReader loadAsScene:@"Scene7"];
    
    [[CCDirector  sharedDirector] replaceScene:gameplayScene withTransition:[CCTransition transitionFadeWithDuration:.8f]];
}

@end
