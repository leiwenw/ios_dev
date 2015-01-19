//
//  PlayingCard.h
//  Matchismo
//
//  Created by Leiwen Wu on 5/21/13.
//  Copyright (c) 2013 Leiwen Wu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card
@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;
+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;
@end
