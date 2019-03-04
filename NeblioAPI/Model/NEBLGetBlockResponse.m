#import "NEBLGetBlockResponse.h"

@implementation NEBLGetBlockResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"hash": @"hash", @"confirmations": @"confirmations", @"size": @"size", @"height": @"height", @"version": @"version", @"merkleroot": @"merkleroot", @"tx": @"tx", @"time": @"time", @"nonce": @"nonce", @"bits": @"bits", @"difficulty": @"difficulty", @"previousblockhash": @"previousblockhash", @"nextblockhash": @"nextblockhash", @"reward": @"reward" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"hash", @"confirmations", @"size", @"height", @"version", @"merkleroot", @"tx", @"time", @"nonce", @"bits", @"difficulty", @"previousblockhash", @"nextblockhash", @"reward"];
  return [optionalProperties containsObject:propertyName];
}

@end
