//
//  ViewController.m
//  MoviewPlayerSample
//
//  Created by 松谷淳史 on 2014/11/23.
//  Copyright (c) 2014年 Atsuhi Matsutani. All rights reserved.
//

#import "ViewController.h"
#import "AVPlayerView.h"

@interface ViewController () {
    AVPlayer     *videoPlayer;
    AVPlayerView *view;
    NSString *moviePath;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    // 今回はすでにDocuments以下に置いてある動画を再生する
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *directory = [paths objectAtIndex:0];
    moviePath = [directory stringByAppendingPathComponent:@"/movie.mov"];
    // ↑ここのパスをデバッガで止めて、このパスに動画を置く
    
    NSURL *movieURL = [NSURL fileURLWithPath:moviePath];
    
    videoPlayer = [[AVPlayer alloc]initWithURL:movieURL];
    
    
    AVPlayerLayer* layer = ( AVPlayerLayer* )playerView.layer;
    layer.videoGravity = AVLayerVideoGravityResizeAspect;
    layer.player       = videoPlayer;
    [videoPlayer play];
    
//     ↓のコードでは、StoryBoardを使わずに表示して再生する
//    float playerHeight = self.view.frame.size.height-(self.view.frame.size.height/2);
//    float playerWidth = self.view.frame.size.width;
//    
//    view    = [[AVPlayerView alloc]initWithFrame:CGRectMake(0, 0,playerWidth,playerHeight)];
//    *1で説明したAVPlayerとViewとを紐づける処理
//    [(AVPlayerLayer*)view.layer setPlayer:videoPlayer];
//    
//    [self.view addSubview:view];
//    [self.view bringSubviewToFront:playerView];
//    [videoPlayer play];
}


@end
