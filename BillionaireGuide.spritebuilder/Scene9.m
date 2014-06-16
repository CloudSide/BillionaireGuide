//
//  Sence9.m
//  BillionaireGuide
//
//  Created by Bruce on 14-6-5.
//  Copyright (c) 2014年 Apportable. All rights reserved.
//

#import "Scene9.h"

@implementation Scene9

- (void)didLoadFromCCB {
    
    [[OALSimpleAudio sharedInstance] playBg:@"b2.mp3" loop:YES];
    
    [self performSelector:@selector(loadScene10) withObject:nil afterDelay:2.4f];
}

- (void)loadScene10 {
    
    __autoreleasing CCScene *gameplayScene = [CCBReader loadAsScene:@"Scene10"];
    [[CCDirector  sharedDirector] replaceScene:gameplayScene withTransition:[CCTransition transitionCrossFadeWithDuration:0.8]];
}

@end
