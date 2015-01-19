//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Leiwen Wu on 5/21/13.
//  Copyright (c) 2013 Leiwen Wu. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"
#import "Card.h"

@interface CardGameViewController()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (strong, nonatomic) Deck *deck;
@end

@implementation CardGameViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (Deck *)deck
{
    if (!_deck)
    {
        _deck = [[PlayingCardDeck alloc] init];
    }
    
    return _deck;
}

- (void)setCardButtons:(NSArray *)cardButtons
{
    _cardButtons = cardButtons;
    for (UIButton *cardButton in cardButtons)
    {
        Card *card = [self.deck drawRandomCard];
        [cardButton setTitle:card.contents forState:UIControlStateSelected];
    }
    NSLog(@"setCardButton");
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"flipCount");
}

- (IBAction)flipCard:(UIButton *)sender
{
    /*if (!sender.isSelected)
    {
        NSLog(@"Draw Card");
        Card *card = [self.playingCardDeck drawRandomCard];
        if (!card)
        {
            NSLog(@"Re-init deck and draw again");
            card = [[self.playingCardDeck init] drawRandomCard];
            self.flipCount = 0;
        }
        
        NSLog(@"Card: %@", card.contents);
        [sender setTitle:card.contents forState:UIControlStateSelected];
        self.flipCount++;
    }*/
    
    sender.selected = !sender.isSelected;
    self.flipCount++;
    NSLog(@"flipCard");
}

@end
