//
//  Contact.m
//  w1d2_contactList
//
//  Created by Seantastic31 on 27/06/2017.
//  Copyright © 2017 Seantastic31. All rights reserved.
//

#import "Contact.h"

@implementation Contact

// stretch
- (NSString*)description
{
    NSString *contactString = [NSString stringWithFormat:@"%@: <%@> (%@)", self.idNumber, self.name, self.email];
    return contactString;
}

// stretch ***** below to allow the NSSet check objects to reject duplicates
- (BOOL)isEqual:(id)object
{
    Contact *contact = (Contact*)object;
    if ([self.name isEqualToString:contact.name] || [self.email isEqualToString:contact.email])
    {
        NSLog(@"Name or email already exists");
        return YES;
    }
    else
    {
        NSLog(@"New contact added");
        return NO;
    }
}

// stretch ***** also need to change the hash used by NSSet *****
- (NSUInteger)hash
{
    return ([self.name intValue] || [self.email intValue]);
}


@end
