//
//  PaymentGateway.m
//  Lab10
//
//  Created by Bianca Campos on 2018-09-14.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(NSInteger) randomPurchase{
    _dollarValue = arc4random_uniform(900) + 100;
    return _dollarValue;
}



@end
