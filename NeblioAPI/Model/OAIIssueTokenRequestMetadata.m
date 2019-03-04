#import "OAIIssueTokenRequestMetadata.h"

@implementation OAIIssueTokenRequestMetadata

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"tokenName": @"tokenName", @"issuer": @"issuer", @"_description": @"description", @"urls": @"urls", @"userData": @"userData", @"encryptions": @"encryptions", @"rules": @"rules" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"tokenName", @"issuer", @"_description", @"urls", @"userData", @"encryptions", @"rules"];
  return [optionalProperties containsObject:propertyName];
}

@end
