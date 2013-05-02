//
//  BaiHat.h
//  HocTiengNhat
//
//  Created by MAC on 5/1/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface BaiHat : UIView

@property (strong, nonatomic) NSString *nameImage;
@property (strong, nonatomic) NSString *nameMusic;
@property (strong, nonatomic) UIButton *playMusic;
@property (strong, nonatomic) AVAudioPlayer *audioPlayer;

-(void) initNameImage : (NSString *) nameImage withNameMusic : (NSString *) nameMusic;

@end
