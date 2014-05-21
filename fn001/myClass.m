//
//  myClass.m
//  fn001
//
//  Created by evx on 5/19/14.
//  Copyright (c) 2014 evxyz001. All rights reserved.
//

//#import "myClass.h"
//
//@interface myClass () {
//    NSString *_myPrivateString;
//}
//@property (weak,nonatomic) IBOutlet UILabel *myPrivateLabel;
//-(IBAction)myPrivateActionMethod:(id)sender;
//
//@end
//
//
//@implementation myClass // this directive tells Xcode that this will be implemented
//
//
//
//+(NSString)myClassMethod:(NSString *)aString {
//    // implement the class method here
//}
//
//
//-(NSString)myInstanceMethod:(NSString *)aString anotherParam: (NSURL *)aUrl {
//    // Implement the instance methods here
//}
//
//-(IBAction)myPriavateActionMethod:(id)sender {
//    // Implement the Private Method here
//}
//
//
//@end

////////////Category Definition /////////////////////
//@interface ClassNameToUpdate (CategoryName)
//// Declarations for new or overridden methods
//// you can override methods here but not add new instance variables or properties
//@end
//
//@implementation ClassNameToUpdate (CategoryName)
//// implementations of new methods go here
//@end
//
//
/////////// New Protocol ///////////
//@protocol AnewProtocol <NSObject>
//    @optional
//        // declarations for optional methods
//    @required
//        // Declare required methods
//        // methods without @required are assumed to be required
//@end
//
////////////////////


//int userAge;
//int userAgeInDays;
//userAge = 30 ;
//userAgeInDays = userAge * 365;
//
//NSString *userName;
//
//[[<class name> alloc]init];
//
//[<class name> new];
//
//UILabel *myLabel
//
//myLabel= [UILabel new];
//
//
/////// handler Blocks  ////
//
//Blocks
//
//() // groups expressions together
//
//! //negation
//
//if then else
//
//switch
//
//loops
//    do
//
//
//Object DataTypes and pointers
//
//typecasting
//
//message Nesting
//
//
//
//@synthesize myIntProperty;


///////// object Data Types //////

// objects can't be stored like primatives 

NSString *userName; // subsiquently we can now call it with out the * 

// objects are pointed to not stored like vars 
// vars are where values are stored 
// the object has only been pointed to 

[[<class name> alloc]int] 
// or 
[[<class name> new]; 

UILabel *myLabel 
mylabel = [UILabel new]; 


//convenience Methods // intitailizes and casts with a value 
NSURL *ioSURL; 
ioSURL=[[NSURL alloc] initWithString:@"http://www.teachyourselfios.com/"]; 

// typecasting so that the var is recognized as another type, the type goes inside (anImportantClass *) this is how to get new types for objects 

(anImportantClass *) unknownObject

// now it can recieve a var of the correct type 

anImportantClass *myKnownObject=(anImportantClass *) unknownObject; 

((anImportantClass *)unknownObject).anImportantProperty 

/// messages 
[<object variable or class name> <method name>]; 
// with params 
[<object variable or class name> <method name>: <parameter value> 
				   additionalParameter:<parameter value>]; 

[userName compare:@"John" options:NSCaseInsensative]; 

// Nesting of messages 

// handler Blocks // code chucks passed as values when calling methods 

[personInformation setDisplayName:^(NSString firstName, NSString lastName)
		{ 
			// code here to modify the fist name and last name
			// display it 
		}]; 
// see a "short partical guide to blocks" in the Xcode Doc.

() // grouping of code 

== // pointer equivalence 
!= // not equal 
&& // AND
|| // OR 
! // negates expression result as in the opposite of 
! 
 
C expression syntax en.wikipedia.org/wiki/Operators_in_C_and_C%2B%2B

switch (<numeric value>) { 

case <numeric option 1>: 
// value 
break 
case <numeric option 2>: 
// value 
break;
default: 
// this ooption if none other 

for while do 

Auto Ref Counting // in IOS? 


Apple Docs:  
learning objective C a primer 
object oriented programming with Objective-C 
Programing with Objective-C 
