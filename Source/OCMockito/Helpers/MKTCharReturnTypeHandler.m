//
//  OCMockito - MKTCharReturnTypeHandler.m
//  Copyright 2014 Jonathan M. Reid. See LICENSE.txt
//
//  Created by: Jon Reid, http://qualitycoding.org/
//  Source: https://github.com/jonreid/OCMockito
//

#import "MKTCharReturnTypeHandler.h"


@implementation MKTCharReturnTypeHandler

- (instancetype)init
{
    self = [super initWithType:@encode(char)];
    return self;
}

- (void)setReturnValue:(id)returnValue onInvocation:(NSInvocation *)invocation
{
    char value = [returnValue charValue];
    [invocation setReturnValue:&value];
}

@end
