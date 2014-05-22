//
//  EVXViewController.m
//  Ch1tSend
//
//  Created by evx on 5/21/14.
//  Copyright (c) 2014 evxyz001. All rights reserved.
//

#import "EVXViewController.h"

@interface EVXViewController (){
       IBOutlet UIImageView *myImageView;
}

@end

@implementation EVXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    UIBarButtonItem *cameraButton = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(cameraTapped:) ];
    UIBarButtonItem *shareButton = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(shareTapped:) ];
    self.navigationItem.rightBarButtonItems = @[cameraButton,shareButton];
    
    
    // [myImageView setImage:[UIImage imageNamed:@"food already"]];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)cameraTapped:(id)sender{
    // NSLog(@"WoW button got tapped"); // worked
    UIImagePickerController *myPicker = [[UIImagePickerController alloc]init];
    myPicker.delegate = self;
    [self presentViewController:myPicker animated:YES completion:nil];
}
-(IBAction)shareTapped:(id)sender{
    (NSLog(@"ShareTapper!!"));
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage *selectedImage = info[UIImagePickerControllerOriginalImage];
    [myImageView setImage:selectedImage];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(BOOL)textFieldShouldRetun:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}
-(UIImage *)saveImageMessage {
    UIGraphicsBeginImageContextWithOptions(self.view.bounds.size, self.view.opaque, 0.0);
    [self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *imageView= UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return imageView;
}

@end
