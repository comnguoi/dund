//
//  ChuDe.h
//  HocTiengNhat
//
//  Created by MAC on 5/1/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "WordViewController.h"
#define COUNT_WORD 10

@interface ChuDe : UIView

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *imageName;
@property (strong, nonatomic) NSString *soundName;
@property (strong, nonatomic) AVAudioPlayer *audioPlayer;
@property (strong, nonatomic) NSArray *wordArray;
@property (strong, nonatomic) WordViewController *wordViewController;
@property (strong, nonatomic) UIViewController *viewController;

-(void) initName : (NSString *) name
   withImageName : (NSString *)imageName
   withSoundName : (NSString *) soundName;

-(void) pushWordViewController : (UIViewController *) viewController ;

@end
