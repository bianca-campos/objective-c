//
//  Patient.h
//  Lab7
//
//  Created by Bianca Campos on 2018-09-12.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor;

@interface Patient : NSObject

@property(nonatomic, assign) NSUInteger age; //NSUInteger is All positive numbers
@property(nonatomic, strong) NSString *name;
@property(nonatomic, strong) NSString *symptom;

- (instancetype)initWithName: (NSString *) name andAge: (NSUInteger) age andhealthCard: (Boolean) healthCard andSymptom: (NSString *) symptom;
-(Boolean) visitDoctor: (Doctor *) doctor;
-(void) requestMedication: (Doctor *) doctor;

@end
