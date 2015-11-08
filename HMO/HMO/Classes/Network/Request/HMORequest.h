//
//  HMORequest.h
//  HMO
//
//  Created by Terry on 15/11/5.
//  Copyright © 2015年 Terry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HMORequest : NSObject

@property(nonatomic, copy) NSString *method;

-(NSDictionary *)getParameter;

-(void)POST;

-(void)GET;

@end
