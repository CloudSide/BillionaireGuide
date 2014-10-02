//
//  Scene4.m
//  BillionaireGuide
//
//  Created by Bruce on 14-5-20.
//  Copyright (c) 2014年 Apportable. All rights reserved.
//

#import "Scene4.h"

@implementation Scene4

- (void)play {
    
    [[OALSimpleAudio sharedInstance] playEffect:@"button_down.mp3"];
    
    __autoreleasing CCScene *gameplayScene = [CCBReader loadAsScene:@"Scene5"];
    [[CCDirector  sharedDirector] replaceScene:gameplayScene withTransition:[CCTransition transitionFadeWithDuration:.8f]];
}

- (void)regAndLogin {
    
    //////////////////////////////////////////////////
    UIAlertView *dialog = [[UIAlertView alloc] init];
    [dialog setDelegate:self];
    [dialog setTitle:@"提示"];
    [dialog setMessage:@"益飞处理按钮点击后的事件"];
    [dialog addButtonWithTitle:@"好的"];
    [dialog show];
    //////////////////////////////////////////////////
}

- (void)selectServerName {
    
}

@end
