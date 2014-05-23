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
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}


@synthesize suit = _suit; // because we implemented a getter and setter
+(NSArray *)validSuits // not this is a class var
// used for creating things and untility methods
{
    return @[@"♥️",@"♦️",@"♠️",@"♣️"];
}
-(void)setSuit:(NSString *)suit
{
    if ([[PlayingCard validSuits] containsObject:suit]) {
         _suit = suit;
    }
}

- (NSString *)suit
{
    return _suit ? _suit : @"?";
}
+(NSArray *)rankStrings{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];// string objects are what go in the Array not strings
            // placed here for readability
}
+ (NSUInteger)maxRank {
    return [[self rankStrings]count]-1;}

-(void)setRank:(NSUInteger)rank
{
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}


@end