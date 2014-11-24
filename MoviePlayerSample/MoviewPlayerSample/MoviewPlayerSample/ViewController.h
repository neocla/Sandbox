//
//  ViewController.h
//  MoviewPlayerSample
//
//  Created by 松谷淳史 on 2014/11/23.
//  Copyright (c) 2014年 Atsuhi Matsutani. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <Foundation/Foundation.h>
#import <CoreMedia/CoreMedia.h>
#import <AVFoundation/AVFoundation.h>

#import "AVPlayerView.h"a

@interface ViewController : UIViewController{
    // あとでくっつける先となるUIViewの継承クラス
    // 上で作ったやつ
    IBOutlet AVPlayerView *playerView;
}

@end

