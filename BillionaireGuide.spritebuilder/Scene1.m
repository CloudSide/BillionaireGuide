//
//  Scene1.m
//  BillionaireGuide
//
//  Created by Bruce on 14-5-18.
//  Copyright (c) 2014年 Apportable. All rights reserved.
//

#import "Scene1.h"
#import "OALSimpleAudio.h"

@implementation Scene1

- (id)init {

    if (self = [super init]) {
        
        [self performSelector:@selector(loadScene2) withObject:nil afterDelay:4.f];
    }
    
    return self;
}

- (void)loadScene2 {

    __autoreleasing CCScene *gameplayScene = [CCBReader loadAsScene:@"Scene2"];
    [[CCDirector  sharedDirector] replaceScene:gameplayScene withTransition:[CCTransition transitionFadeWithDuration:.8f]];
    
    [self performSelector:@selector(loadScene3) withObject:nil afterDelay:2.8f];
    
    
}

- (void)loadScene3 {
    
    __autoreleasing CCScene *gameplayScene = [CCBReader loadAsScene:@"Scene3"];
    [[CCDirector  sharedDirector] replaceScene:gameplayScene withTransition:[CCTransition transitionFadeWithDuration:.8f]];
    
    [self performSelector:@selector(loadScene4) withObject:nil afterDelay:2.8f];
}


- (void)loadScene4 {
    
    CCScene *gameplayScene = [CCBReader loadAsScene:@"Scene4"];
    [[CCDirector  sharedDirector] replaceScene:gameplayScene withTransition:[CCTransition transitionCrossFadeWithDuration:0.8]];
    
    [[OALSimpleAudio sharedInstance] playBg:@"b1.mp3" loop:YES];
}

@end
