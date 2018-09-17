//
//  PaymentGateway.h
//  Lab10
//
//  Created by Bianca Campos on 2018-09-14.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate <NSObject>

-(void)processPaymentAmount: (NSInteger) parameter;

@end

@interface PaymentGateway : NSObject

@property (nonatomic, weak) id<PaymentDelegate> delegate;
@property(nonatomic, assign) NSInteger dollarValue;

-(NSInteger) randomPurchase;

@end


