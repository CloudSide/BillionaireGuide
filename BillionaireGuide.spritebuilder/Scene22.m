//
//  Scene22.m
//  BillionaireGuide
//
//  Created by Bruce on 14-6-8.
//  Copyright (c) 2014年 Apportable. All rights reserved.
//

#import "Scene22.h"

@implementation Scene22

- (void)didLoadFromCCB {
    // tell this scene to accept touches
    self.userInteractionEnabled = TRUE;
}

- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    
    __autoreleasing CCScene *gameplayScene = [CCBReader loadAsScene:@"Scene23"];
    [[CCDirector  sharedDirector] replaceScene:gameplayScene withTransition:[CCTransition transitionCrossFadeWithDuration:0.8]];
}

@end
