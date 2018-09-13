//
//  Patient.m
//  Lab7
//
//  Created by Bianca Campos on 2018-09-12.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@interface Patient(){
    @private
    Boolean healthCard;
}
@end

@implementation Patient

- (instancetype)initWithName: (NSString *) name andAge: (NSUInteger) age andhealthCard: (Boolean) healthCard andSymptom: (NSString *) symptom
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        healthCard = healthCard;
        _symptom = symptom;
    }
    return self;
}

-(Boolean) visitDoctor: (Doctor *) doctor{
    return [doctor acceptPatient: self withHealthCard: healthCard];
}

-(void) requestMedication: (Doctor *) doctor{
    // 1. doctor checking if self (patient) is in the patient list.
    if ([doctor prescribeMedication:self]) {
        NSLog(@"Got the medication!");
    } else{
        NSLog(@"REJECTED! No medication...");
    }
    
}

@end
