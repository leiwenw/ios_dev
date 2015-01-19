//
//  Deck.h
//  Matchismo
//
//  Created by Leiwen Wu on 5/21/13.
//  Copyright (c) 2013 Leiwen Wu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject
- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (Card *)drawRandomCard;
@end
