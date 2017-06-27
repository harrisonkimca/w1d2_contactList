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

@end
