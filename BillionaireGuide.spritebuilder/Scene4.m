//
//  Scene4.m
//  BillionaireGuide
//
//  Created by Bruce on 14-5-20.
//  Copyright (c) 2014年 Apportable. All rights reserved.
//  http://www.lovbl.com/creating-an-in-game-store-with-multiple-tabs-for-cocos2d-using-cctableview/
//  https://github.com/tudor133/CCTableViewExample

#import "Scene4.h"

@implementation Scene4

- (CCTableViewCell *)tableView:(CCTableView*)tableView nodeForRowAtIndex:(NSUInteger) index {
    
    CCTableViewCell* cell = [CCTableViewCell node];
    cell.contentSizeType = CCSizeTypeMake(CCSizeUnitNormalized, CCSizeUnitUIPoints);
    cell.contentSize = CGSizeMake(100.0f, 72.0f);
    float colorFactor = (index / 100);
    // Just a sample node that changes color with each index value
    CCNodeColor* colorNode = [CCNodeColor nodeWithColor:[CCColor colorWithRed:colorFactor green:(1.0f - colorFactor) blue:(0.2f + 0.5 * colorFactor) ] width:100.0f height:28.0f];
    [cell addChild:colorNode];
    return cell;
}

- (NSUInteger) tableViewNumberOfRows:(CCTableView *) tableView {
    
    return 100;
    return [[G servers] count]; // just a demo
}

- (void)didLoadFromCCB {
    
    CCTableView *table = [CCTableView node];
    table.contentSizeType = CCSizeTypeNormalized;
    table.contentSize = CGSizeMake(1.0, 1.0);
    table.position = CGPointMake(20, -180);
    table.dataSource = self; // make our class the data source
    table.block = ^(CCTableView *table) {
        NSLog(@"Cell %d was pressed", (int) table.selectedRow);
    };
    [self addChild:table];
}

/*
- (instancetype)init {
    
    self = [super init];
    
    if (self) {
        
        CCTableView *table = [CCTableView node];
        table.dataSource = self; // make our class the data source
        table.block = ^(CCTableView *table) {
            NSLog(@"Cell %d was pressed", (int) table.selectedRow);
        };
        [self addChild:table];
    }
    return self;
}
 */

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
