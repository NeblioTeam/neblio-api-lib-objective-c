#import "NEBLSendTokenRequest.h"

@implementation NEBLSendTokenRequest

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"fee": @"fee", @"from": @"from", @"sendutxo": @"sendutxo", @"to": @"to", @"flags": @"flags", @"metadata": @"metadata" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"from", @"sendutxo", @"flags", @"metadata"];
  return [optionalProperties containsObject:propertyName];
}

@end
