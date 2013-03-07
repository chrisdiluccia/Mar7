//
//  Mar7AppDelegate.h
//  Mar7
//
//  Created by Christopher J Di Luccia on 3/4/13.
//  Copyright (c) 2013 Christopher J Di Luccia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVAudioPlayer.h>  //needed for AVAudioPlayer
@class View;

@interface Mar7AppDelegate: UIResponder <UIApplicationDelegate> {
    View *view;
    UIWindow *_window;
    AVAudioPlayer *player;
}

@property (strong, nonatomic) UIWindow *window;
@end

