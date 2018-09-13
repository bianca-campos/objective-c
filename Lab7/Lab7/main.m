//
//  main.m
//  Lab7
//
//  Created by Bianca Campos on 2018-09-12.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Prescription.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // create a instance of doctor, patient, and prescription - 2 patients 1 with card and another without. creste a doctor
        Patient *biancaRich = [[Patient alloc] initWithName:@"Bianca Rich" andAge:24 andhealthCard:true andSymptom: @"Stomach ache"];
        Patient *biancaPoor = [[Patient alloc] initWithName:@"Bianca Poor" andAge:24 andhealthCard:false andSymptom: @"Headache"];
        Doctor *doctor = [[Doctor alloc] initWithName:@"Good doctor" andSpecialization:@" "];
        
        if ([biancaPoor visitDoctor:doctor]) {
            [biancaPoor requestMedication:doctor];
        } else{
            ([biancaRich visitDoctor:doctor]) {
            [biancaRich requestMedication:doctor];
        }

    }
    return 0;
}
