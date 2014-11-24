//
//  AVPlayerView.h
//  MoviewPlayerSample
//
//  Created by 松谷淳史 on 2014/11/24.
//  Copyright (c) 2014年 Atsuhi Matsutani. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

#ifndef MoviewPlayerSample_AVPlayerView_h
#define MoviewPlayerSample_AVPlayerView_h

@interface AVPlayerView : UIView


- (id)initWithFrame:(CGRect)frame;

// AVPlayerLayerが使えますよと教えてあげる
// これなしで、普通のUIViewにくっつけても動かないので大事
+ (Class)layerClass;

@end


#endif
