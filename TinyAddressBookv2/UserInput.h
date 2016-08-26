//
//  UserInput.h
//  TinyAddressBookv2
//
//  Created by Dan Esrey on 2016/26/08.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

NSString *getStringFromUser(int stringLength, NSString *prompt);

NSNumber *getNumberFromUser(int maxValidChoice);

Person* getCardFromUser();

