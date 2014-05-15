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
@property (strong, nonatomic)NSMutableArray *imageText;
-(IBAction)cameraTapped:(id)sender;
-(IBAction)shareTapped:(id)sender;

@property (strong, nonatomic)NSMutableArray *savedImage;
@property (weak, nonatomic) IBOutlet UIButton *tapToSend;

@end
