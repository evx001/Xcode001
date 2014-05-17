//
//  PlayingCard.m
//  cardStanf
//
//  Created by evx on 5/17/14.
//  Copyright (c) 2014 evxyz001. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

- (NSString *)contents
{
    NSArray *rankStrings = @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];// string objects are what go in the Array not strings.
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

// --------------------------------------

-(void)setSuit:(NSString *)suit
{
    if ([@[@"♥️",@"♦️",@"♠️",@"♣️"] containsObject:suit]) {
         _suit = suit;
    }
}

- (NSString *)suit
{
    return _suit ? _suit : @"?";
}

@end