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
    // connects view to controller
    IBOutlet UIImageView *myImageView;
}
@property (weak, nonatomic) IBOutlet UIButton *catSendButton;
@property (weak, nonatomic) IBOutlet UILabel *labelCatSend;

@end

@implementation EVXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    // Setter for image
    UIBarButtonItem *cameraButton= [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(cameraTapped:)];
    UIBarButtonItem *shareButton= [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(shareTapped:)];
    
    self.navigationItem.rightBarButtonItems = @[cameraButton,shareButton];
    
    // [myImageView setImage: [UIImage imageNamed:@"foodPlease"]];
    
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
-(IBAction)cameraTapped:(id)sender {
    UIImage *savedImage = [self saveImageMessage];
    
    UIActivityViewController *myActivity = [[UIActivityViewController alloc] initWithActivityItems:@[savedImage] applicationActivities:nil];
    //UIActivityViewController *myActiviyController = [[UIActivityViewController alloc] initWithActivityItems:@[savedImage] applicatonActivities:nil]];
    UIImagePickerController *myPicker = [[UIImagePickerController alloc]init];
    
    myPicker.delegate = self; // says when you are done comeback to self
    
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
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES; 
}
-(UIImage *)saveImageMessage {
    UIGraphicsBeginImageContextWithOptions(self.view.bounds.size, self.view.opaque, 0.0);
    [self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *imageView =
    UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return imageView;
}
    @end

