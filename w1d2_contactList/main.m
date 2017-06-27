//
//  main.m
//  w1d2_contactList
//
//  Created by Seantastic31 on 27/06/2017.
//  Copyright © 2017 Seantastic31. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InputCollector *inputCollector = [[InputCollector alloc]init];
        NSString *usernameInput = [inputCollector inputForPrompt:@"Enter your username"];
        NSLog(@"%@", usernameInput);
        
        
        
        
    }
    return 0;
}
