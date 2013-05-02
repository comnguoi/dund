//
//  ViewController.m
//  ReBackGroundChooser
//
//  Created by MAC on 5/1/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()

@end

@implementation ViewController

@synthesize pageCount, sourceData, myScrollView, currentPage;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.sourceData = [[ResourceData alloc] init];
    pageCount = [self.sourceData.photoArray count];
    currentPage = 0;
    
}

-(void) loadPage : (NSInteger) pageIndex {
    if (pageIndex < 0 || pageIndex >= pageCount) {
        return;
    }
    
    CGRect frame = [[UIScreen mainScreen] bounds];
    // set goc toa do
    frame.origin.x = frame.size.width * pageIndex;
    frame.origin.y = 0.0f;
    
    
    UIImageView *newPageView = [[UIImageView alloc] initWithImage:[self.sourceData.photoArray objectAtIndex:pageIndex]];
    newPageView.contentMode = UIViewContentModeScaleAspectFit;
//    newPageView.contentMode = UIViewContentModeScaleToFill;
    newPageView.frame = frame;
    
    [self.myScrollView addSubview:newPageView];
    
}


-(void) loadVisiblesPage {
    
    CGFloat pageWidth = self.myScrollView.frame.size.width;
    NSInteger pageIndex = (NSInteger)floorf(self.myScrollView.contentOffset.x/pageWidth + 0.5f);
    
        currentPage = pageIndex;
        [self loadPage : pageIndex];
        [self loadPage : pageIndex + 1];

}

-(void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    CGSize sizeForScrollView = self.myScrollView.frame.size;
    self.myScrollView.contentSize = CGSizeMake(sizeForScrollView.width * pageCount, sizeForScrollView.height);
    currentPage = 0;
    
    [self loadVisiblesPage];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView {
//    NSLog(@"%d", currentPage);
    [self loadVisiblesPage];
    
}

@end
