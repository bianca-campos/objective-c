//
//  ManagerOne.m
//  Lab11
//
//  Created by Bianca Campos on 2018-09-23.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

#import "ManagerOne.h"

@implementation ManagerOne

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    if ([toppings containsObject:@"anchovies"]) {
        return NO;
    }
    return YES;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return NO;
}

@end
