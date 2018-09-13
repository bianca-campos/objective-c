//
//  Doctor.m
//  Lab7
//
//  Created by Bianca Campos on 2018-09-12.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"


@interface Doctor(){
@private
    NSMutableArray *patientList;
}
@end

@implementation Doctor
- (instancetype)initWithName: (NSString *) name andSpecialization: (NSString *) specialization
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
        patientList = [NSMutableArray new];
    }
    return self;
}

- (Boolean) acceptPatient: (Patient *) patient withHealthCard: (Boolean) healthCard{
    if (healthCard) {
        [patientList addObject:patient];
        NSLog(@"Successfully added to the patient list.");
        return true;
    } else{
        NSLog(@"Invalid HealthCArd.");
        return false;
    }
}

-(Boolean) prescribeMedication: (Patient *) patient withSymptom: (NSString *) symptom{
    if ([patientList containsObject:patient]) {
        NSLog(@"Medication on the way");
        // 1. check the symptom
        // 2. Create a prescription - create a class and use it
        Prescription *toPacient = [Prescription new];
        // 3. give the prescription to the patient
        // 4. give the medication
//                [Prescription.givePrescription = symptom];
        return true;
    } else{
        NSLog(@"You are not my patient.");
        return false;
    }
}

@end
