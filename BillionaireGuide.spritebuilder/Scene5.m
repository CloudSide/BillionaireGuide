//
//  Scene5.m
//  BillionaireGuide
//
//  Created by Bruce on 14-5-20.
//  Copyright (c) 2014年 Apportable. All rights reserved.
//

#import "Scene5.h"

@implementation Scene5

- (void)didLoadFromCCB {
    // tell this scene to accept touches
    self.userInteractionEnabled = TRUE;
}

- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {

    __autoreleasing CCScene *gameplayScene = [CCBReader loadAsScene:@"Scene6"];
    [[CCDirector  sharedDirector] replaceScene:gameplayScene withTransition:[CCTransition transitionFadeWithDuration:.8f]];
}

@end
