//
//  KitchenDelegate.h
//  Lab11
//
//  Created by Bianca Campos on 2018-09-17.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
@class Kitchen;

@protocol KitchenDelegate <NSObject>

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *) toppings;
- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *) kitchen;
- (void)kitchenDidMakePizza:(Pizza *) pizza;

@end


