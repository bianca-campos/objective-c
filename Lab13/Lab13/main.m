//
//  main.m
//  Lab13
//
//  Created by Bianca Campos on 2018-09-13.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Convert.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *string = @"Kale Chips";
        NSString *stringLW = [string lowercaseString];
        NSLog(@"%@", stringLW);
        NSLog(@"%@", [stringLW pigLatin]);
    }
    return 0;
}
