//
//  Scene8.m
//  BillionaireGuide
//
//  Created by Bruce on 14-6-5.
//  Copyright (c) 2014年 Apportable. All rights reserved.
//

#import "Scene8.h"

@implementation Scene8

- (void)didLoadFromCCB {

    [_nikeName.textField becomeFirstResponder];
}

- (void)ok {
    
    CCLOG(@"%@", _nikeName.textField.text);
    
    if (_nikeName.textField.text.length < 2) {
        
        UIAlertView* dialog = [[UIAlertView alloc] init];
        [dialog setTitle:@"提示"];
        [dialog setMessage:@"输入的昵称太短了!"];
        [dialog addButtonWithTitle:@"确定"];
        [dialog show];
        
        return;
    }
    
    
    UIAlertView* dialog = [[UIAlertView alloc] init];
    [dialog setDelegate:self];
    [dialog setTitle:@"提示"];
    [dialog setMessage:@"你确定要使用这个昵称吗？设置以后将不能更改"];
    [dialog addButtonWithTitle:@"确定"];
    [dialog addButtonWithTitle:@"取消"];
    [dialog show];
    
}


- (void)alertView:(UIAlertView *)alert clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    if(buttonIndex == 0) {
        
        [G setNikename:_nikeName.textField.text];
        
        __autoreleasing CCScene *gameplayScene = [CCBReader loadAsScene:@"Scene9"];
        [[CCDirector  sharedDirector] replaceScene:gameplayScene withTransition:[CCTransition transitionFadeWithDuration:.6f]];
    
    } else {
        
        //NSLog(@"取消");
    }
}

@end
