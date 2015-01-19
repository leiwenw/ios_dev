//
//  Card.m
//  Matchismo
//
//  Created by Leiwen Wu on 5/21/13.
//  Copyright (c) 2013 Leiwen Wu. All rights reserved.
//

#import "Card.h"

@implementation Card
- (int)match:(NSArray *)otherCards
{
    int score = 0;
    for (Card *card in otherCards)
    {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    
    return score;
}
@end
