//
//  ResourceData.m
//  ReBackGroundChooser
//
//  Created by MAC on 5/1/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import "ResourceData.h"

@implementation ResourceData

@synthesize photoArray;

-(id) init {
    if (self = [super init]) {
        
        self.photoArray = [NSArray arrayWithObjects:
                           
                           [UIImage imageNamed:@"fight.jpg"],
                           [UIImage imageNamed:@"garden.jpg"],
                           [UIImage imageNamed:@"girl.png"],
                           [UIImage imageNamed:@"grapeapple.jpg"],
                           [UIImage imageNamed:@"hello.jpg"],
                           [UIImage imageNamed:@"ikea.jpg"],
                           [UIImage imageNamed:@"kiwi.jpg"],
                           [UIImage imageNamed:@"library.jpg"],
                           [UIImage imageNamed:@"lickme.jpg"],
                           [UIImage imageNamed:@"limegreen.jpg"],
                           [UIImage imageNamed:@"penguins.jpg"],
                           [UIImage imageNamed:@"samurai.png"]
                           
                           , nil];
        
    }
    
    return self;
}

-(UIImage *) imageAtIndex:(int)index {
    return [[self.photoArray objectAtIndex:index] image];
}

@end
