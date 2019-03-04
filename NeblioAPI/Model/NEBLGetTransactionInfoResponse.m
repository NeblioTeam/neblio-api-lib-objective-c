#import "NEBLGetTransactionInfoResponse.h"

@implementation NEBLGetTransactionInfoResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"hex": @"hex", @"txid": @"txid", @"version": @"version", @"locktime": @"locktime", @"vin": @"vin", @"vout": @"vout", @"blocktime": @"blocktime", @"blockheight": @"blockheight", @"totalsent": @"totalsent", @"fee": @"fee", @"blockhash": @"blockhash", @"time": @"time", @"confirmations": @"confirmations" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"hex", @"txid", @"version", @"locktime", @"vin", @"vout", @"blocktime", @"blockheight", @"totalsent", @"fee", @"blockhash", @"time", @"confirmations"];
  return [optionalProperties containsObject:propertyName];
}

@end
