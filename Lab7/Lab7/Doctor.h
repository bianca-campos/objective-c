//
//  Doctor.h
//  Lab7
//
//  Created by Bianca Campos on 2018-09-12.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Prescription.h"

@class Patient;
@interface Doctor : NSObject

@property(nonatomic, strong) NSString *name;
@property(nonatomic, strong) NSString *specialization;

- (instancetype)initWithName: (NSString *) name andSpecialization: (NSString *) specialization;
- (Boolean) acceptPatient: (Patient *) patient withHealthCard: (Boolean) healthCard;
- (Boolean) prescribeMedication: (Patient *) patient withSymptom: (NSString *) symptom;

    
@end
