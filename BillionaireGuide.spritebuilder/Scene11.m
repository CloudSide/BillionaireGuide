//
//  Scene11.m
//  BillionaireGuide
//
//  Created by Bruce on 14-6-7.
//  Copyright (c) 2014年 Apportable. All rights reserved.
//

#import "Scene11.h"

@implementation Scene11

- (void)didLoadFromCCB {
    // tell this scene to accept touches
    self.userInteractionEnabled = TRUE;
}

- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    
    __autoreleasing CCScene *gameplayScene = [CCBReader loadAsScene:@"Scene12"];
    [[CCDirector  sharedDirector] replaceScene:gameplayScene withTransition:[CCTransition transitionCrossFadeWithDuration:0.8]];
}

@end
