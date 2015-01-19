//
//  Card.h
//  Matchismo
//
//  Created by Leiwen Wu on 5/21/13.
//  Copyright (c) 2013 Leiwen Wu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter = isFaceUp) BOOL faceUp;
@property (nonatomic, getter = isUnPlayable) BOOL unPlayable;
- (int)match:(NSArray *)otherCards;
@end
