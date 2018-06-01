#import "SWGGetAddressUtxosResponseInner.h"

@implementation SWGGetAddressUtxosResponseInner

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"address": @"address", @"txid": @"txid", @"vout": @"vout", @"ts": @"ts", @"scriptPubKey": @"scriptPubKey", @"amount": @"amount", @"confirmations": @"confirmations" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"address", @"txid", @"vout", @"ts", @"scriptPubKey", @"amount", @"confirmations"];
  return [optionalProperties containsObject:propertyName];
}

@end
