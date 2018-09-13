//
//  BCFormFieldParser.h
//  VisitorSDK
//
//  Created by Viktor Fabian on 4/10/14.
//  Copyright (c) 2014 LogMeIn Inc. All rights reserved.
//

#import "BCFormField.h"
#import "BCFormFieldOption.h"

@interface BCFormFieldParser : NSObject

+ (BCFormField *)formField:(NSDictionary *)formField;
+ (NSArray *)formFields:(NSArray *)formFields;

+ (BCFormFieldOption *)formFieldOption:(NSDictionary *)formOption;
+ (NSArray *)formFieldOptions:(NSArray *)formFields;

+ (BCFormFieldType)chatItemTypeForDictionary:(NSDictionary *)dictionary key:(NSString *)key;

@end
