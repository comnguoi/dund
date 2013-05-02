//
//  ViewController.h
//  ReBackGroundChooser
//
//  Created by MAC on 5/1/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ResourceData.h"

@interface ViewController : UIViewController <UIScrollViewDelegate, UIGestureRecognizerDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *myScrollView;
@property (strong, nonatomic) ResourceData *sourceData;
@property int pageCount;
@property int currentPage;
@end
