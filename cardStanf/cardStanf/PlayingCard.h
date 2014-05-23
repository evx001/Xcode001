//
//  PlayingCard.h
//  cardStanf
//
//  Created by evx on 5/17/14.
//  Copyright (c) 2014 evxyz001. All rights reserved.
//
#import "Card.h"

@interface PlayingCard : Card
@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank; // 64bit integer possible
+(NSArray *)validSuits;
@end

