//
//  Deck.m
//  cardStanf
//
//  Created by evx on 5/16/14.
//  Copyright (c) 2014 evxyz001. All rights reserved.
//

#import "Deck.h"

@interface Deck () // because it connects back to header?
@property (strong, nonatomic) NSMutableArray *cards;// strong because we want it to stay in the heap as long as there are pointers for it.
@end

@implementation Deck
-(NSMutableArray *)cards
   // nice!! while we are getting we can check for nil // if nil we make NSMutableArray space on the heap
{
    if (!_cards) _cards = [[NSMutableArray alloc] init]; // !! lazy instantiation // now everytime we call self.cards we can be sure to get a NSMutableArray
    return _cards; // synthesis
    
}

- (void)addCard:(Card *)card atTop:(BOOL)atTop
{

    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    } else {
        [self.cards addObject:card];
    }
}
//
//
- (void)addCard:(Card *)card;
{
    [self addCard:card atTop:NO];
}
- (Card *)drawRandomCard
{
    Card *randomCard = nil;
    
    if ([self.cards count]) {
    unsigned index = arc4random() % [self.cards count];
    randomCard = self.cards[index];
    [self.cards removeObjectAtIndex:index];
    }
    return randomCard;
    
}

@end
