//
//  Scene4.m
//  BillionaireGuide
//
//  Created by Bruce on 14-5-20.
//  Copyright (c) 2014年 Apportable. All rights reserved.
//  http://www.lovbl.com/creating-an-in-game-store-with-multiple-tabs-for-cocos2d-using-cctableview/
//  https://github.com/tudor133/CCTableViewExample

#import "Scene4.h"

//#define SCREEN [[CCDirector sharedDirector] viewSize]

@implementation Scene4

/*
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
    
    CGSize tSize = CGSizeMake(SCREEN.width / 2, SCREEN.height * 0.7);
    CCTableView *table = [CCTableView node];
    table.contentSizeType = CCSizeTypePoints;
    table.contentSize = tSize;//CGSizeMake(1.0, 1.0);
    table.positionType = CCPositionTypePoints;
    table.position = CGPointMake(20, 180);
    table.dataSource = self; // make our class the data source
    table.block = ^(CCTableView *table) {
        NSLog(@"Cell %d was pressed", (int) table.selectedRow);
    };
    [self addChild:table];
}
 */
static UIWebView *wv;
- (void)didLoadFromCCB {
    
    CGSize screenSize = [[CCDirector sharedDirector] viewSize];
    int pequenoTamanho = screenSize.height - 330;
    UIWebView *webview = [[UIWebView alloc] init];
    webview.delegate = self;
    [webview setFrame:CGRectMake(20, pequenoTamanho, 280, 310)];
    //NSString *urlAddress = @"http://www.google.com";
    
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"html/cate.html" ofType:nil];
    [webview loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:filePath] cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:20.0]];
    
    
    //Create a URL object.
    //NSURL *url = [NSURL URLWithString:urlAddress];
    //URL Requst Object
    //NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    //Load the request in the UIWebView.
    //[webview loadRequest:requestObj];
    UIView *glView = [CCDirector sharedDirector].view;
    [glView addSubview:webview];
    [webview setHidden:YES];
    wv = webview;
}

/*
- (instancetype)init {
    
    self = [super init];
    
    if (self) {
        
        CGSize tSize = CGSizeMake(SCREEN.width / 2, SCREEN.height * 0.7);
        CCTableView *table = [CCTableView node];
        [table setContentSize:tSize];
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

- (void)gotoLogin {
    
    //////////////////////////////////////////////////
    UIAlertView *dialog = [[UIAlertView alloc] init];
    [dialog setDelegate:self];
    [dialog setTitle:@"提示"];
    [dialog setMessage:@"益飞处理按钮点击后的事件"];
    [dialog addButtonWithTitle:@"好的"];
    [dialog show];
    //////////////////////////////////////////////////
}

/*
- (void)selectServerName {
    [wv setHidden:NO];
    [wv reload];
}


- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
    
    //NSLog(@"%@", [request URL]);
    
    if ([[[request URL] scheme] isEqualToString:@"native"]) {
        
        NSString *path = [[[request URL] path] stringByReplacingOccurrencesOfString:@"/" withString:@""];
        
        NSString *query = [[request URL] query];
        
        NSMutableDictionary *parms = [NSMutableDictionary dictionary];
        
        for (NSString *item in [query componentsSeparatedByString:@"&"]) {
            
            NSArray *kv = [item componentsSeparatedByString:@"="];
            NSString *result = [(NSString *)[kv objectAtIndex:1] stringByReplacingOccurrencesOfString:@"+" withString:@" "];
            result = [result stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
            [parms setValue:result forKey:[kv objectAtIndex:0]];
        }
        
        
        SEL action = NSSelectorFromString([path stringByAppendingString:@":"]);
        
        if ([self respondsToSelector:action]) {
            
            [self performSelector:action withObject:parms];
            
            //[self performSelectorOnMainThread:action withObject:parms waitUntilDone:YES];
            
            return NO;
        }
        
    }
    
    return YES;
}
 */

@end
