//
//  main.m
//  Lab10
//
//  Created by Bianca Campos on 2018-09-14.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "InputHandler.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        PaymentGateway *gateway = [PaymentGateway new];
        
        NSString *menu = [NSString stringWithFormat:@"Thanks for shopping at Acme.com\n Your total today is $%ld\nPlease select a payment method:\n 1: Paypal, 2: Stripe, 3: Amazon \n", [gateway randomPurchase]];
        
        NSString *option = [InputHandler getUserInputWithLength:20 withPrompt: menu];
        NSInteger userAnsInt = [option integerValue];
        
        switch (userAnsInt) {
            case 1:
                gateway.delegate = [PaypalPaymentService new];
                [gateway.delegate processPaymentAmount:[gateway randomPurchase]];
                break;
            case 2:
                gateway.delegate = [StripePaymentService new];
                [gateway.delegate processPaymentAmount:[gateway randomPurchase]];
                break;
            case 3:
                gateway.delegate = [AmazonPaymentService new];
                [gateway.delegate processPaymentAmount:[gateway randomPurchase]];
                break;
            default:
                break;
        }
        
        
    }
    return 0;
}
