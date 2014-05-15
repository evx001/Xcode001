//
//  EVXViewController.m
//  chatServ000
//
//  Created by evx on 5/8/14.
//  Copyright (c) 2014 evxyz001. All rights reserved.
//

#import "EVXViewController.h"

@interface EVXViewController ()
// this is where "private instance variables would get defined" 

@end

@implementation EVXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

   	NSString *message001 = @"My Lucky number";
    NSString *message002 = @"is in my array at location [1] which gives me the number:";
    NSNumber *myNum = @7;
    
    NSArray *myArray =@[@1,@7,@3];
    NSLog(@"%@ %@ %@ %@",message001,myNum, message002, myArray[1]);
    NSLog(@"myArray has a size of %d",[myArray count]);
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
	