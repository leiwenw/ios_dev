//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by Leiwen Wu on 6/22/13.
//  Copyright (c) 2013 Leiwen Wu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface CardMatchingGame : NSObject
- (id)initWithCardCount:(NSUInteger)cardCount
              usingDeck:(Deck *)deck;
- (void)flipCardAtIndex:(NSUInteger)index;
- (Card *)cardAtIndex:(NSUInteger)index;
@property (nonatomic, readonly) int score;
@end
