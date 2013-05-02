//
//  MusicViewController.m
//  HocTiengNhat
//
//  Created by MAC on 5/1/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import "MusicViewController.h"

#define ItemWidth 150.0f

@interface MusicViewController ()

@end

@implementation MusicViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Music";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.musicArray = [NSArray arrayWithObjects:
                       @"CanYouSmile",
                       @"comebackagain",
                       @"Paradise",
                       @"ineedagirl"
                       , nil];
    
    CGSize pagesScrollViewSize = self.scrollView.frame.size;
    self.scrollView.contentSize = CGSizeMake(pagesScrollViewSize.width, ItemWidth*[self.musicArray count]);
    
    for (int i = 0;  i < [self.musicArray count]; i++) {
        
        BaiHat *baiHat = [[BaiHat alloc] init];
        [baiHat initNameImage:@"sound" withNameMusic:[self.musicArray objectAtIndex:i]];
        baiHat.frame = CGRectMake(0, ItemWidth*i, [[UIScreen mainScreen] bounds].size.width, ItemWidth);
        baiHat.contentMode = UIViewContentModeScaleAspectFit;
        
        [self.scrollView addSubview:baiHat];
    }
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
