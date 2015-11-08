//
//  HMORequest.m
//  HMO
//
//  Created by Terry on 15/11/5.
//  Copyright © 2015年 Terry. All rights reserved.
//

#import "HMORequest.h"
#import "AFNetworking.h"


@interface HMORequest()

@property(nonatomic, copy) NSString *baseUrl;

@end

@implementation HMORequest


-(instancetype)init
{
    self = [super init];
    
    if(!self)
        return nil;
    
    self.baseUrl = @"http://moran.chinacloudapp.cn/moran/web";
    
    return self;
}

-(NSDictionary *)getParameter
{
    return nil;
}

-(void)POST
{
    NSString *urlString = [self.baseUrl stringByAppendingString:self.method];
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
    NSDictionary *params = [self getParameter];
    
    [manager POST:urlString parameters:params
          success:^(AFHTTPRequestOperation *operation, id responseObject)
    {
        NSLog(@"JSON: %@", responseObject);
    }
          failure:
     ^(AFHTTPRequestOperation *operation, NSError *error) {
         NSLog(@"Error: %@", error);
     }];
}

-(void)GET
{
    NSString *urlString = [self.baseUrl stringByAppendingString:self.method];
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
    NSDictionary *params = [self getParameter];
    
    [manager GET:urlString parameters:params
          success:^(AFHTTPRequestOperation *operation, id responseObject)
     {
         NSLog(@"JSON: %@", responseObject);
     }
          failure:
     ^(AFHTTPRequestOperation *operation, NSError *error) {
         NSLog(@"Error: %@", error);
     }];
}


@end
