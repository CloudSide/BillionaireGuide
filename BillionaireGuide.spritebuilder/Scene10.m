//
//  Scene10.m
//  BillionaireGuide
//
//  Created by Bruce on 14-6-7.
//  Copyright (c) 2014年 Apportable. All rights reserved.
//

#import "Scene10.h"

@implementation Scene10

- (void)didLoadFromCCB {
    // tell this scene to accept touches
    self.userInteractionEnabled = TRUE;
}

- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    
    __autoreleasing CCScene *gameplayScene = [CCBReader loadAsScene:@"Scene11"];
    [[CCDirector  sharedDirector] replaceScene:gameplayScene withTransition:[CCTransition transitionFadeWithDuration:.8f]];
}

@end
