//
//  Card.h
//  cardStanf
//
//  Created by evx on 5/16/14.
//  Copyright (c) 2014 evxyz001. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter = isMatched) BOOL matched;
-(int)match:(Card *)card;
@end
