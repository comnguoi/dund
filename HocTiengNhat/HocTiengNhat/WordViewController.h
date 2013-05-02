//
//  WordViewController.h
//  HocTiengNhat
//
//  Created by MAC on 5/2/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WordViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property int topic;
@property (strong, nonatomic) NSString *nameFile;
@end
