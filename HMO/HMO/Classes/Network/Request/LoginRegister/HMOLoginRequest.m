//
//  HMOLoginRequest.m
//  HMO
//
//  Created by Terry on 15/11/5.
//  Copyright © 2015年 Terry. All rights reserved.
//

#import "HMOLoginRequest.h"

@implementation HMOLoginRequest

-(instancetype)init
{
    self = [super init];
    
    if(!self)
        return nil;
    
    self.method = @"/user/login";
    
    return self;
}

-(NSDictionary *)getParameter
{
    NSDictionary * params =  @ {@"email" :_email, @"password" :_password };
    
    return params;
}

@end
