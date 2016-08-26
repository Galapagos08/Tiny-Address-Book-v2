//
//  Person.m
//  TinyAddressBookv2
//
//  Created by Dan Esrey on 2016/26/08.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)init {
    return [self initWithName:@"Unnamed"
                        email:@"Not set"
                        buddy:@"tbd"];
}

- (instancetype)initWithName:(NSString *)name
                       email:(NSString *)email
                       buddy:(NSString *)buddy {
    self = [super init];
    if (self) {
        _name = name;
        _email = email;
        _buddy = buddy;
    }
    return self;
}

- (NSString *)name {
    return _name;
}

- (NSString *)description {
    return _name;
}

- (NSString *)email {
    return _email;
}

- (NSString *)buddy {
    return _buddy;
}

@end
