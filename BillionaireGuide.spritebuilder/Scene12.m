//
//  Scene12.m
//  BillionaireGuide
//
//  Created by Bruce on 14-6-7.
//  Copyright (c) 2014年 Apportable. All rights reserved.
//

#import "Scene12.h"

@implementation Scene12

- (void)didLoadFromCCB {
    // tell this scene to accept touches
    self.userInteractionEnabled = TRUE;
}

- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    
    __autoreleasing CCScene *gameplayScene = [CCBReader loadAsScene:@"Scene13"];
    [[CCDirector  sharedDirector] replaceScene:gameplayScene withTransition:[CCTransition transitionCrossFadeWithDuration:0.8]];
}

@end
