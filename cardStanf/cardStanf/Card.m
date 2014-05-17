//
//  Card.m
//  cardStanf
//
//  Created by evx on 5/16/14.
//  Copyright (c) 2014 evxyz001. All rights reserved.
//

#import "Card.h"
@interface Card()

@end

@implementation Card : NSObject;


-(int)match:(NSArray *)otherCards
{
    int score = 0;
    for (Card *card in otherCards) {
    if([card.contents isEqualToString:self.contents]) {
        score = 1;
        
    }
 }
    
    return score;
    NSLog(@"%d",score);
}
@end
