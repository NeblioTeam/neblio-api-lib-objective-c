#import "SWGGetAddressInfoResponseUtxos.h"

@implementation SWGGetAddressInfoResponseUtxos

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"index": @"index", @"txid": @"txid", @"blockheight": @"blockheight", @"blocktime": @"blocktime", @"scriptPubKey": @"scriptPubKey", @"used": @"used", @"value": @"value", @"tokens": @"tokens" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"index", @"txid", @"blockheight", @"blocktime", @"scriptPubKey", @"used", @"value", @"tokens"];
  return [optionalProperties containsObject:propertyName];
}

@end
