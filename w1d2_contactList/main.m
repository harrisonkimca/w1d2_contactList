//
//  main.m
//  w1d2_contactList
//
//  Created by Seantastic31 on 27/06/2017.
//  Copyright © 2017 Seantastic31. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ContactList *contactList = [[ContactList alloc]init];
        BOOL loopOn = YES;
        
        while (loopOn)
        {
            InputCollector *inputCollector = [[InputCollector alloc]init];
            NSString *usernameInput = [inputCollector inputForPrompt:@"Enter your selection\n> new\n> list\n> show\n> quit\n"];
            //NSLog(@"%@", usernameInput);
            
            if ([usernameInput isEqualToString:@"quit"])
            {
                loopOn = NO;
                NSLog(@"See you next time!");
                break;
            }
            
            else if ([usernameInput isEqualToString:@"new"])
            {
                NSString *newName = [inputCollector inputForPrompt:@"Enter name:"];
                NSString *newEmail = [inputCollector inputForPrompt:@"Enter email:"];
                //NSLog(@"%@", newName);
                //NSLog(@"%@", newEmail);
                
                Contact *contact = [[Contact alloc]init];
                contact.name = newName;
                contact.email = newEmail;
                [contactList addContact:contact];
                NSLog(@"New contacted added");
                //NSLog(@"%@", contactList);
            }
            
            // stretch
            else if ([usernameInput isEqualToString:@"list"])
            {
                NSLog(@"%@", [contactList description]);
            }
            
            else if ([usernameInput isEqualToString:@"show"])
            {
                NSString *showID = [inputCollector inputForPrompt:@"Enter contact ID:"];
                Contact *showContact = [contactList showContact:showID];
                
                if (showContact)
                {
                    NSLog(@"%@", [showContact description]);
                }
                else
                {
                    NSLog(@"Contact not found");
                }
            }
        }
    }
    return 0;
}
