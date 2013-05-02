//
//  ChuDe.m
//  HocTiengNhat
//
//  Created by MAC on 5/1/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import "ChuDe.h"
#import "WordViewController.h"

@implementation ChuDe

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.frame = CGRectMake(0, 0, 160, 160);
        
    }
    return self;
}

-(void) initName : (NSString *) name
   withImageName : (NSString *) imageName
   withSoundName : (NSString *) soundName {
    
    UILabel *labelName = [[UILabel alloc] init];
    [labelName setText:name];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:imageName]];
    imageView.frame = CGRectMake(10, 10, 90, 90);
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:soundName ofType:@"mp3"];
    NSURL *url = [NSURL fileURLWithPath:filePath];
    NSError *error;
    self.audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error: &error];
    if (error) {
        NSLog(@"Error %@", error.description);
        return;
    }
    [self.audioPlayer prepareToPlay];
    
    [self addSubview:imageView];
    [self addSubview:labelName];
    
}

-(void) pushWordViewController : (UIViewController *) viewController {
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapView:)];
    self.userInteractionEnabled = YES;
    [self addGestureRecognizer:tap];
    
    self.viewController = viewController;
    
}

-(void) tapView : (UITapGestureRecognizer *) sender {
    [self.audioPlayer play];
    self.wordViewController = [[WordViewController alloc] initWithNibName:@"WordViewController" bundle:nil];
    
    self.wordViewController.topic = self.tag;
    
    [self.viewController.navigationController pushViewController:self.wordViewController animated:YES];
    

}

@end
