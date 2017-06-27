//
//  ContactList.h
//  w1d2_contactList
//
//  Created by Seantastic31 on 27/06/2017.
//  Copyright © 2017 Seantastic31. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property (strong, nonatomic) NSMutableArray *contacts;

- (void)addContact:(Contact*)newContact;
- (Contact*)showContact:(NSString*)idNumber;
- (Contact*)findContact:(NSString*)usernameInput;
- (NSString*)description;

@end
