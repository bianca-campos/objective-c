//
//  InputHandler.h
//  Lab3
//
//  Created by Bianca Campos on 2018-09-06.
//  Copyright © 2018 Bianca Campos. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputHandler : NSObject
+ (NSString *) getUserInputWithLength: (int) maxLength withPrompt: (NSString *) prompt;

@end
