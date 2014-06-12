//
//  Scene7.m
//  BillionaireGuide
//
//  Created by Bruce on 14-5-22.
//  Copyright (c) 2014年 Apportable. All rights reserved.
//

#import "Scene7.h"
#import "AppDelegate.h"

@class AppController;

@implementation Scene7

- (void)didLoadFromCCB {
    
    //CCLOG(@"1111111111-----%@",  self.userda);
    
    if ([G sex]) {
        
        //[_button setBackgroundSpriteFrame:[CCSpriteFrame frameWithImageNamed:@"7chojinzbig2two.png"] forState:CCControlStateNormal];
        //[_button setBackgroundOpacity:0.1f forState:CCControlStateNormal];
        
        [_button1 setVisible:NO];
        [_button2 setVisible:YES];
    
    } else {
        
        [_button1 setVisible:YES];
        [_button2 setVisible:NO];
    }
}

- (void)ok {

    __autoreleasing CCScene *gameplayScene = [CCBReader loadAsScene:@"Scene8"];
    [[CCDirector  sharedDirector] replaceScene:gameplayScene withTransition:[CCTransition transitionFadeWithDuration:.6f]];
    
    
}

- (void)cancel {

    __autoreleasing CCScene *gameplayScene = [CCBReader loadAsScene:@"Scene6"];
    [[CCDirector  sharedDirector] replaceScene:gameplayScene withTransition:[CCTransition transitionFadeWithDuration:.6f]];
}

@end
