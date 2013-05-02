//
//  Word.h
//  HocTiengNhat
//
//  Created by MAC on 5/1/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface Word : UIView

@property (strong, nonatomic) NSString *imageName;
@property (strong, nonatomic) NSString *soundName;
@property (strong, nonatomic) NSString *soundExampleName;
@property (strong, nonatomic) NSString *soundExample;
@property (strong, nonatomic) AVAudioPlayer *audioPlayer;
@property (strong, nonatomic) AVAudioPlayer *audioPlayerExample;
@property (strong, nonatomic) UIButton *button;
@property (strong, nonatomic) UIButton *buttonExample;
@property (strong, nonatomic) UILabel *labelWordExample;


-(void) initImageName : (NSString *) imageName
        withSoundName : (NSString *) soundName
 withSoundExampleName : (NSString *) soundExampleName
     withSoundExample : (NSString *) soundExample;

@end
