//
//  BaiHat.m
//  HocTiengNhat
//
//  Created by MAC on 5/1/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import "BaiHat.h"

#define ROW_HEIGHT 150
#define ROW_WIDTH 320

@implementation BaiHat
@synthesize playMusic;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
//        self.frame = CGRectMake(0, 0, ROW_WIDTH, ROW_HEIGHT);
    }
    return self;
}

-(void) initNameImage:(NSString *)nameImage
        withNameMusic:(NSString *)nameMusic{
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:nameImage]];
    imageView.frame = CGRectMake(0, 0, 80, 80);
    
    UILabel *labelNameMusic = [[UILabel alloc] init];
    [labelNameMusic setText:nameMusic];
    labelNameMusic.frame = CGRectMake(10, 100, 150, 30);
    
   
    NSString *filePath = [[NSBundle mainBundle] pathForResource:nameMusic ofType:@"mp3"];
    NSURL *url = [NSURL fileURLWithPath:filePath];
    NSError *error;
    self.audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error: &error];
    if (error) {
        NSLog(@"Error %@", error.description);
        return;
    }
    [self.audioPlayer prepareToPlay];
    
    playMusic = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    playMusic.frame = CGRectMake(160, 50, 60, 40);
    [playMusic setTitle:@"Play" forState:UIControlStateNormal];
    [playMusic addTarget:self action:@selector(playControl:) forControlEvents:UIControlEventTouchUpInside];
    
    [self addSubview:imageView];
    [self addSubview:labelNameMusic];
    [self addSubview:playMusic];
    
}

-(void) playControl : (id) sender {

    UIButton *button = (UIButton *) sender;
    
    
    if (button.tag == 0) {
        [self.audioPlayer play];
        [button setTitle:@"Stop" forState:UIControlStateNormal];
        [button setTag:1];
    }
    else {
        [self.audioPlayer stop];
        [button setTitle:@"Play" forState:UIControlStateNormal];
        [button setTag:0];
    }
    
}

@end
