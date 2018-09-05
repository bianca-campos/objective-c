//
//  main.m
//  Lab1
//
//  Created by Bianca Campos on 2018-09-04.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

#import <Foundation/Foundation.h>

NSString *getUserInput(NSString *prompt){
        char inputChars[255];
        NSLog(@"%@", prompt);
        fgets(inputChars, 255, stdin);
        printf("Your input was %s\n", inputChars);
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        return [inputString stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while (true) {
        
        NSString *input =  getUserInput(@"Enter your name: ");
        NSString *operation = getUserInput(@"Enter the number of the operation: ");
            int value = operation.intValue;
            NSInteger inputNSInt;
            NSString *canadianized;
//            NSString stringWithFormat;
            NSString *last;
            NSString *despace;
            
            switch (value) {
                case 0:
                    return 0;
                case 1:
                    //        1. Uppercase
                    NSLog(@"%@", [input uppercaseString]);
                    break;
                    
                case 2:
                    //        2. Lowercase
                    NSLog(@"%@", [input lowercaseString]);
                    break;
                case 3:
                    //        3. Numberize
                    inputNSInt = [input integerValue];
                    NSLog(@"%ld", inputNSInt);
                    break;
                case 4:
                    //        4. Canadianize
//                    canadianized = [stringWithFormat: @"%@%@", input, @", eh?" ];
//                    NSLog(@"%@", canadianized);
                    break;
                case 5:
                    //        5. Respond
                    last = [input substringFromIndex: [input length] -1];
                    if ([last isEqualToString:@"?"]) {
                        NSLog(@"%@", @"I don't know");
                    }else if ([last isEqualToString:@"!"]){
                        NSLog(@"%@", @"Whoa, calm down");
                    }
                case 6:
                    //        6. De-Space-It
                    despace = [input stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                    NSLog(@"%@", despace);
                default:
                    break;
            }
        }

    }
    return 0;
}
