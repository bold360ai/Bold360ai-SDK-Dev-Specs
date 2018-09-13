//
//  BCOSSUpdateTyperNotification.h
//  VisitorSDK
//
//  Created by Viktor Fabian on 3/31/14.
//  Copyright (c) 2014 LogMeIn Inc. All rights reserved.
//

#import "BCOSSNotification.h"
#import "BCPerson.h"

@class BCOSSUpdateTyperNotification;

@protocol BCOSSUpdateTyperNotificationDelegate <NSObject>

- (void)ossUpdateTyperNotification:(BCOSSUpdateTyperNotification *)updateTyperNotification didReceivePerson:(BCPerson *)person typing:(BOOL)typing;

@end

@interface BCOSSUpdateTyperNotification : BCOSSNotification
@property(nonatomic, assign)id<BCOSSUpdateTyperNotificationDelegate> delegate;
@end
