
//
//  Prescription.m
//  Lab7
//
//  Created by Bianca Campos on 2018-09-12.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

#import "Prescription.h"

@implementation Prescription

-(Boolean) givePrescription: (NSString *) symptom{
    if ([symptom isEqualToString:@"Stomach ache"]) {
        NSLog(@"You have to take Alive");
        return true;
    }else{
        NSLog(@"No medications for you");
        return false;
    }
}

@end
