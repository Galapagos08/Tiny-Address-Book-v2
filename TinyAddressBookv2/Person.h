//
//  Person.h
//  TinyAddressBookv2
//
//  Created by Dan Esrey on 2016/26/08.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Person : NSObject {
}

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *email;
@property (nonatomic, copy) NSString *buddy;


- (instancetype)initWithName:(NSString *)name
                       email:(NSString *)email
                       buddy:(NSString *)buddy NS_DESIGNATED_INITIALIZER;



@end
