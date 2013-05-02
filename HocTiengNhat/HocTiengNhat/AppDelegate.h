//
//  AppDelegate.h
//  HocTiengNhat
//
//  Created by MAC on 5/1/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LearnViewController.h"
#import "MusicViewController.h" 

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) LearnViewController *learnViewController;
@property(strong, nonatomic) MusicViewController *musicViewController;

@end
