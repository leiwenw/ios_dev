//
//  CardMatchingGame.m
//  Matchismo
//
//  Created by Leiwen Wu on 6/22/13.
//  Copyright (c) 2013 Leiwen Wu. All rights reserved.
//

#import "CardMatchingGame.h"

@interface CardMatchingGame()
@property (strong, nonatomic) NSMutableArray *cards;
@end

@implementation CardMatchingGame
- (NSMutableArray *)cards
{
    if (!_cards)
    {
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}

- (id)initWithCardCount:(NSUInteger)count usingDeck:(Deck *)deck
{
    self = [super init];
    if (self)
    {
        for (int i=0; i<count; i++)
        {
            Card *card = [deck drawRandomCard];
            if (!card)
                self = nil;
            else
                self.cards[i] = card;
        }
    }
    
    return self;
}
@end
