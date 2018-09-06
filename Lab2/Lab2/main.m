//
//  main.m
//  Lab2
//
//  Created by Bianca Campos on 2018-09-05.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Box *box1 = [[Box alloc] initWithWidth:10 andHeight:10 andLength:10];
        Box *box2 = [[Box alloc] initWithWidth:5 andHeight:5 andLength:5];
//        NSLog(@"%.2f", [box1 volume]);
        NSLog(@"%.2f", [box2 ratio: box1]);
        
        
//        Student *student1 = [[Student alloc] initWithId:1 andName:@"Bianca" andCountry:@"Canada"];
//
//        //using getter
//        NSLog(@"%d", [student1 identification]);
//        //using setter
//        [student1 setIdentification:10];
//        NSLog(@"%d", [student1 identification]);
//        [student1 name];
//        [student1 setName:@"Burger"];
        
        
        
    }
    return 0;
}
