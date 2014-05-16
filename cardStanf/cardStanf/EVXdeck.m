//
//  EVXdeck.m
//  cardStanf
//
//  Created by evx on 5/16/14.
//  Copyright (c) 2014 evxyz001. All rights reserved.
//

#import "EVXdeck.h"

@interface EVXdeck () // because it connects back to header?

@property (strong, nonatomic) NSMutableArray *cards;// strong because we want it to stay in the heap as long as there are pointers for it.

@end

@implementation EVXdeck
-(NSMutableArray *)cards
{   // nice!! while we are getting we can check for nil // if nil we make NSMutableArray space on the heap
    if (!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}
- (void)addCard:(Card *)card atTop:(BOOL)atTop; {

    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    } else {
        [self.cards addObject:card];
    }
}


- (void)addCard:(Card *)card;
{
    [self addCard:card atTop:NO];
}
- (Card *)drawRandomCard;{
    
}
@end
