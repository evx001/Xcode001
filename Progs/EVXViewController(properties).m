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
//    NSMutableArray *imageNames;
    // we'll be using properties which will auto generate code.
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
        [newImageNames addObject:@"Joe"];
        [imageText addObject:@"Joe in Front of the House"];
    }
    
    self.imageNames = newImageNames;
    
//    NSLog(@"Name: %@, Text: %@",imageNames[0],imageText [0]);
//    for (NSString *name in imageNames) {
//        NSLog(@"Name: %@",name);
//    }
    for (int i=0; i < [self.imageNames count]; i++)  {
        NSLog(@"Name: %@, Text: %@", [self imageNames][1], imageText[i]);
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end

