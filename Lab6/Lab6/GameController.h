//
//  GameController.h
//  Lab6
//
//  Created by Bianca Campos on 2018-09-11.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject

@property(nonatomic, strong) NSMutableArray *displayDice;

-(void) displayCurrentDeck;
-(void) roll;
-(void) holdDie: (NSUInteger) die;
-(void) resetDice;
-(void) holdAll;
-(void) displayScore;

@end
