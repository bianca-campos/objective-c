//
//  Prescription.h
//  Lab7
//
//  Created by Bianca Campos on 2018-09-12.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

@interface Prescription : NSObject

@property(nonatomic, strong) NSString *prescriptionName;
-(Boolean) givePrescription: (NSString *) symptom


@end
