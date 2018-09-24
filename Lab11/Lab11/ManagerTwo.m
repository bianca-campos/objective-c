
//
//  ManagerTwo.m
//  Lab11
//
//  Created by Bianca Campos on 2018-09-23.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

#import "ManagerTwo.h"

@implementation ManagerTwo


- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    return YES;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    NSLog(@"Nice");
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return YES;
}

@end
