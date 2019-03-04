#import "NEBLGetAddressResponse.h"

@implementation NEBLGetAddressResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"addrStr": @"addrStr", @"balance": @"balance", @"balanceSat": @"balanceSat", @"totalReceived": @"totalReceived", @"totalReceivedSat": @"totalReceivedSat", @"totalSent": @"totalSent", @"totalSentSat": @"totalSentSat", @"unconfirmedBalance": @"unconfirmedBalance", @"unconfirmedBalanceSat": @"unconfirmedBalanceSat", @"unconfirmedTxAppearances": @"unconfirmedTxAppearances", @"txAppearances": @"txAppearances", @"transactions": @"transactions" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"addrStr", @"balance", @"balanceSat", @"totalReceived", @"totalReceivedSat", @"totalSent", @"totalSentSat", @"unconfirmedBalance", @"unconfirmedBalanceSat", @"unconfirmedTxAppearances", @"txAppearances", @"transactions"];
  return [optionalProperties containsObject:propertyName];
}

@end
