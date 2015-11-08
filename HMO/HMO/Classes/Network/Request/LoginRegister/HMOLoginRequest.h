//
//  HMOLoginRequest.h
//  HMO
//
//  Created by Terry on 15/11/5.
//  Copyright © 2015年 Terry. All rights reserved.
//

#import "HMORequest.h"

@interface HMOLoginRequest : HMORequest

@property(nonatomic, copy) NSString *email;
@property(nonatomic, copy) NSString *password;

@end
