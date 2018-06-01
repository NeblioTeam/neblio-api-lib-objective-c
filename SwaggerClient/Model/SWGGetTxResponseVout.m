#import "SWGGetTxResponseVout.h"

@implementation SWGGetTxResponseVout

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"value": @"value", @"n": @"n", @"scriptPubKey": @"scriptPubKey", @"used": @"used", @"blockheight": @"blockheight", @"usedBlockheight": @"usedBlockheight", @"usedTxid": @"usedTxid" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"value", @"n", @"scriptPubKey", @"used", @"blockheight", @"usedBlockheight", @"usedTxid"];
  return [optionalProperties containsObject:propertyName];
}

@end
