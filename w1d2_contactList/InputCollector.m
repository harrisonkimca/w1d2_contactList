//
//  InputCollector.m
//  w1d2_contactList
//
//  Created by Seantastic31 on 27/06/2017.
//  Copyright © 2017 Seantastic31. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

- (NSString*)inputForPrompt:(NSString*)promptString
{
    char inputChars[255];
    NSLog(@"%@", promptString);
    fgets(inputChars, 255, stdin);
    NSString *inputString = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    NSString *input = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return input;
    
}

@end
