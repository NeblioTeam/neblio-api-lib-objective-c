#import "SWGGetTxResponseVin.h"

@implementation SWGGetTxResponseVin

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"txid": @"txid", @"vout": @"vout", @"scriptSig": @"scriptSig", @"sequence": @"sequence", @"value": @"value", @"valueSat": @"valueSat", @"n": @"n" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"txid", @"vout", @"scriptSig", @"sequence", @"value", @"valueSat", @"n"];
  return [optionalProperties containsObject:propertyName];
}

@end
