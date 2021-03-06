//
//  Scene18.m
//  BillionaireGuide
//
//  Created by Bruce on 14-6-8.
//  Copyright (c) 2014年 Apportable. All rights reserved.
//

#import "Scene18.h"

@implementation Scene18

- (void)didLoadFromCCB {
    // tell this scene to accept touches
    self.userInteractionEnabled = TRUE;
}

- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    
    __autoreleasing CCScene *gameplayScene = [CCBReader loadAsScene:@"Scene19"];
    [[CCDirector  sharedDirector] replaceScene:gameplayScene withTransition:[CCTransition transitionCrossFadeWithDuration:0.8]];
}

@end
