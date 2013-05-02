//
//  WordViewController.m
//  HocTiengNhat
//
//  Created by MAC on 5/2/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import "WordViewController.h"
#import "Word.h"

#define ItemWidth 150

@interface WordViewController ()

@end

@implementation WordViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Detail";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    switch (self.topic) {
        case 0:
            self.nameFile = @"animal";
            break;
            
        case 1:
            self.nameFile = @"fruit";
            break;
        default:
            break;
    }
    
    
    
    [self loadWord];
}

-(void) loadWord {
    NSString *dataPath = [[NSBundle mainBundle]pathForResource:self.nameFile ofType:@"plist"];
    NSMutableArray *array=[[NSMutableArray alloc] initWithContentsOfFile:dataPath];
    
    self.scrollView.contentSize = CGSizeMake([[UIScreen mainScreen] bounds].size.width, ItemWidth * [array count]);
    
    for (int i = 0;  i < [array count]; i++) {
        
        NSString *imageName = [[array objectAtIndex:i] valueForKey:@"imageItem"];
        NSString *sound = [[array objectAtIndex:i] valueForKey:@"sound"];
        NSString *examWord = [[array objectAtIndex:i] valueForKey:@"examWord"];
        NSString *examSound = [[array objectAtIndex:i] valueForKey:@"examSound"];
        
//        NSLog(@"%@", imageName);
        
        Word *word = [[Word alloc] init];
        [word initImageName:imageName
              withSoundName:sound
       withSoundExampleName:examWord
           withSoundExample:examSound];
        
        
        word.frame = CGRectMake(0, ItemWidth*i, [[UIScreen mainScreen] bounds].size.width, ItemWidth);
        word.contentMode = UIViewContentModeScaleAspectFit;
        
        [self.scrollView addSubview:word];
        
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
