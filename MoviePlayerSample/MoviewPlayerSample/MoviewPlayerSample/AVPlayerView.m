//
//  AVPlayerView.m
//  MoviewPlayerSample
//
//  Created by 松谷淳史 on 2014/11/24.
//  Copyright (c) 2014年 Atsuhi Matsutani. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "AVPlayerView.h"

@implementation AVPlayerView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

// AVPlayerLayerが使えますよと教えてあげる
// これなしで、普通のUIViewにくっつけても動かないので大事
+ (Class)layerClass
{
    return [AVPlayerLayer class];
}

@end