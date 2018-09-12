//
//  InputHandler.m
//  Lab3
//
//  Created by Bianca Campos on 2018-09-06.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+ (NSString *) getUserInputWithLength: (int) maxLength withPrompt: (NSString *) prompt {
    if (maxLength < 1) {
        maxLength = 255;
    }
    NSLog(@"%@ ", prompt);
    char inputChars[maxLength];
    const char *cstring = fgets(inputChars, maxLength, stdin);
    NSString *result = [NSString stringWithCString:cstring encoding: NSUTF8StringEncoding];
    NSCharacterSet *whitespaceAndNewline = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    return [result stringByTrimmingCharactersInSet: whitespaceAndNewline];
}

@end
