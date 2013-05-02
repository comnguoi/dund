//
//  ResourceData.h
//  ReBackGroundChooser
//
//  Created by MAC on 5/1/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ResourceData : NSObject

@property (strong, nonatomic) NSArray *photoArray;

-(UIImage *) imageAtIndex : (int) index;

@end
