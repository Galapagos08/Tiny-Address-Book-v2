//
//  main.m
//  TinyAddressBookv2
//
//  Created by Dan Esrey on 2016/26/08.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "Person.h"
#import "Userinput.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL shouldContinue = YES;
 
        NSMutableArray *cards = [NSMutableArray array];
        
        while (shouldContinue) {
            Person *person = getCardFromUser();
            [cards addObject:person];
            NSMutableString *string = [NSMutableString string];
            NSInteger lastIndex = cards.count - 1;
            NSInteger index = 0;
            for (Person *person in cards) {
                [string appendFormat:@"Name:  %@Email:  %@Buddy:  %@", person.name, person.email, person.buddy];
                
                if (index++ < lastIndex) {
                    [string appendString:@"\n"];
                }
                NSLog(@"\n%@", string);
            }
            NSLog(@"\nWould you like to make another entry?\n(0 = NO; 1 = YES)\n");
            NSNumber *anotherEntry = getNumberFromUser(1);
            shouldContinue = [anotherEntry intValue];
        }
        NSLog(@"\n\nAll entries:\n\n");
        for (Person *person in cards) {
            NSLog(@"\n\n%@\n", person);
        }
    }
    return 0;
}
