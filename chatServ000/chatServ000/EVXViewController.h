//
//  EVXViewController.h
//  chatServ000
//
//  Created by evx on 5/8/14.
//  Copyright (c) 2014 evxyz001. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EVXViewController : UIViewController<UIImagePickerControllerDelegate, UINavigationControllerDelegate> 
// public variables would go here
// poperties 
@property (strong,nonatomic)NSMutableArray *imageNames;

-(IBAction)cameraTapped:(id)sender;

@end
