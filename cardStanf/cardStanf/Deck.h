//
//  Deck.h
//  cardStanf
//
//  Created by evx on 5/16/14.
//  Copyright (c) 2014 evxyz001. All rights reserved.
//

#import "Card.h"
#import <Foundation/Foundation.h>

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop; // note two args & the name is addCard_atTop
- (void)addCard:(Card *)card; // this makes addCard have options to either add a card or add a card at the top of the deck.
- (Card *)drawRandomCard; // not a getter because it's gonna do some complex stuff // getters can have side-effects but they are simple in what they set out to do. // So this wont just be a property.





@end
