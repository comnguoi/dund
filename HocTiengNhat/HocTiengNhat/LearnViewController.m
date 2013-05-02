//
//  LearnViewController.m
//  HocTiengNhat
//
//  Created by MAC on 5/1/13.
//  Copyright (c) 2013 MAC. All rights reserved.
//

#import "LearnViewController.h"
#import "ChuDe.h"

#define COUNT_TOPIC 6

@interface LearnViewController ()

@property (nonatomic, strong) ChuDe *tempChuDe;

@end

@implementation LearnViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        self.title = @"Learn";
        self.positionArray = [NSArray arrayWithObjects:
                              @"100", @"80", @"260", @"80",
                              @"100", @"200", @"260", @"200",
                              @"100", @"320", @"260", @"320", nil];
        
        self.imageArray = [NSArray arrayWithObjects:
                           @"animal.png", @"food.png", @"dialog.png",
                           @"airplane.jpg", @"flower.png", @"bus.png", nil];
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSArray *nameArray = [NSArray arrayWithObjects:
                          @"Animal", @"Food", @"Airplane",
                          @"Bus", @"Dialog", @"Flower", nil];
    NSArray *soundNameArray = [NSArray arrayWithObjects:
                               @"animal", @"fruit", @"flower",
                               @"furniture", @"animal", @"fruit", nil];
    
    int position = 0;
    for (int i = 0; i < COUNT_TOPIC; i++) {
        ChuDe *chuDe = [[ChuDe alloc] init];
        
        NSString *name = [nameArray objectAtIndex:i];
        NSString *image = [self.imageArray objectAtIndex:i];
        NSString *sound = [soundNameArray objectAtIndex:i];
        
        [chuDe initName:name withImageName:image withSoundName:sound];
        [chuDe setTag:i];
        
        chuDe.center = CGPointMake([[self.positionArray objectAtIndex:position] floatValue], [[self.positionArray objectAtIndex:position + 1] floatValue]);
        
        [self.view addSubview:chuDe];
        [chuDe pushWordViewController:self];
        
        position = position + 2;
    }
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
