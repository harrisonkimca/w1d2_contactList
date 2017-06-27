//
//  ContactList.m
//  w1d2_contactList
//
//  Created by Seantastic31 on 27/06/2017.
//  Copyright © 2017 Seantastic31. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        _contacts = [[NSMutableArray alloc]init];
    }
    return self;
}

- (void)addContact:(Contact*)newContact
{
    newContact.idNumber = [NSString stringWithFormat:@"%lu", (unsigned long)[self.contacts count]]; // stretch
    [self.contacts addObject:newContact];
}

// stretch
- (Contact*)showContact:(NSString*)idNumber
{
    Contact *showContact = [[Contact alloc]init];
    
    for (Contact *lookupContact in self.contacts)
    {
        if ([lookupContact.idNumber isEqualToString:idNumber])
        {
            showContact = lookupContact;
            return showContact;
        }
    }
    return nil;
}

// override description
- (NSString*)description
{
    NSMutableString *contactString = [[NSMutableString alloc]init];
    
    for (Contact *currentContact in self.contacts)
    {
        NSString *makeString = [NSString stringWithFormat:@"%@: <%@> (%@)\n", currentContact.idNumber, currentContact.name, currentContact.email];
        [contactString appendString:makeString];
    }
    return contactString;
}




@end
