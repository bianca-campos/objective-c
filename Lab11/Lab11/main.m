//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "KitchenDelegate.h"
#import "Kitchen.h"
#import "ManagerOne.h"
#import "ManagerTwo.h"
#import "InputHandler.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        ManagerOne *managerOne = [ManagerOne new];
        ManagerTwo *managerTwo = [ManagerTwo new];
        NSString *menu = [NSString stringWithFormat:@"Plaease choose your method: 1 for Manager One, 2 for Manager 2 and 3 for no manager"];
        
        NSString *option = [InputHandler getUserInputWithLength:20 withPrompt: menu];
        NSInteger userAnsInt = [option integerValue];
        
        switch (userAnsInt) {
            case 1:
                restaurantKitchen.delegate = managerOne;
                
                break;
            case 2:
                restaurantKitchen.delegate = managerTwo;
                break;
            case 3:
                
                break;
            default:
                break;
        }
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "]; //componentsSeparatedByString is split
//            NSLog(@"Size: %@, Toppings: %@, %@, %@.", commandWords[0], commandWords[1], commandWords[2], commandWords[3]);
            if ([commandWords containsObject:@"pepperoni"]) {
                Pizza *pizza = [Pizza largePepperoni];
                NSLog(@"%@", pizza);
            }
            restaurantKitchen.makePizzaWithSize;
                
        }

    }
    return 0;
}

