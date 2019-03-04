#import "OAIBurnTokenResponse.h"

@implementation OAIBurnTokenResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"txHex": @"txHex", @"ntp1OutputIndexes": @"ntp1OutputIndexes", @"multisigOutputs": @"multisigOutputs" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"txHex", @"ntp1OutputIndexes", @"multisigOutputs"];
  return [optionalProperties containsObject:propertyName];
}

@end
