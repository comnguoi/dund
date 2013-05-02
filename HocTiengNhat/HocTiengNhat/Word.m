//
//  Word.m
//  HocTiengNhat
//
//  Created by MAC on 5/1/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import "Word.h"

#define WIDTH 320
#define HEIGHT 320

@implementation Word

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void) initImageName:(NSString *)imageName
        withSoundName:(NSString *)soundName
 withSoundExampleName:(NSString *)soundExampleName
     withSoundExample:(NSString *)soundExample {
    
    NSString *imageNameChange = [NSString stringWithFormat:@"%@.ico", imageName];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:imageNameChange]];
    imageView.frame = CGRectMake(10, 10, 50, 50);
    
    UILabel *labelWord = [[UILabel alloc] init];
    [labelWord setText:soundName];
    labelWord.frame = CGRectMake(10, 70, 80, 30);
    
    self.labelWordExample = [[UILabel alloc] init];
    [self.labelWordExample setText:soundExampleName];
    self.labelWordExample.frame = CGRectMake(50, 110, 250, 40);
    
    self.button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.button.frame = CGRectMake(170, 30, 60, 30);
    [self.button setTitle:@"Phát âm" forState:UIControlStateNormal];
    [self.button addTarget:self action:@selector(phatAm:) forControlEvents:UIControlEventTouchUpInside];
    
    self.buttonExample = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.buttonExample.frame = CGRectMake(5, 110, 40, 40);
    [self.buttonExample setTitle:@"Ví dụ" forState:UIControlStateNormal];
    
    [self addSubview:imageView];
    [self addSubview: labelWord];
    [self addSubview:self.button];
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:soundName ofType:@"mp3"];
    NSURL *url = [NSURL fileURLWithPath:filePath];
    NSError *error;
    self.audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error: &error];
    if (error) {
        NSLog(@"Error %@", error.description);
        return;
    }
    [self.audioPlayer prepareToPlay];
    
    NSString *filePath2 = [[NSBundle mainBundle] pathForResource:soundExample ofType:@"mp3"];
    NSURL *url2 = [NSURL fileURLWithPath:filePath2];
    NSError *error2;
    self.audioPlayerExample = [[AVAudioPlayer alloc] initWithContentsOfURL:url2 error: &error2];
    if (error2) {
        NSLog(@"Error %@", error2.description);
        return;
    }
    [self.audioPlayerExample prepareToPlay];
}

-(void) phatAm : (id)sender {
    
    [self addSubview:self.buttonExample];
    [self addSubview:self.labelWordExample];
    [self.buttonExample addTarget:self action:@selector(phatAmViDu:) forControlEvents:UIControlEventTouchUpInside];

    [self.audioPlayer play];
    
}

-(void) phatAmViDu : (id) sender {
    [self.audioPlayerExample play];
}
@end
