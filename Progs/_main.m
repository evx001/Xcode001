//
//  EVXViewController.m
//  chatServ000
//
//  Created by evx on 5/8/14.
//  Copyright (c) 2014 evxyz001. All rights reserved.
//

#import "EVXViewController.h"

@interface EVXViewController () {
// this is where "private instance variables would get defined" 
    NSMutableArray *imageNames;
    NSMutableArray *imageText;
}
@end

@implementation EVXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    // imageNames = [[NSMutableArray alloc]init];
    imageText = [[NSMutableArray alloc]init];
	
    NSMutableArray *newImageNames =[[NSMutableArray alloc]init];
    
    for (int i=0 ; i<10; i++) {
        [NewimageNames addObject:@"Joe"];
        [imageText addObject:@"Joe in Front of the House"];
    }
    
    [self setImageNames:newImageNames];
    
//    NSLog(@"Name: %@, Text: %@",imageNames[0],imageText [0]);
//    for (NSString *name in imageNames) {
//        NSLog(@"Name: %@",name);
//    }
    for (int i=0; i < [[self getImageNames] count]; i++)  {
        NSLog(@"Name: %@, Text: %@", self getImageNames[1], imageText[i]);
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSMutableArray *)getImageNames
{
    return imageNames;
}
-(void)setImageNames:(NSMutableArray *)newImageNames
{
    imageNames = newImageNames;
}
@end
