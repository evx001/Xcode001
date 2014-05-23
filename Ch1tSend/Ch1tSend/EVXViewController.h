//
//  EVXViewController.h
//  Ch1tSend
//
//  Created by evx on 5/21/14.
//  Copyright (c) 2014 evxyz001. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EVXViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate> 
@property (strong, nonatomic) NSString *imageName;
@property (strong, nonatomic) NSString *imageText;

-(IBAction)cameraTapped:(id)sender; // remember to add the actioin in .m
-(IBAction)shareTapped:(id)sender;

@end
