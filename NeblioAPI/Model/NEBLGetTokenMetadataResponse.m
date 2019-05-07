#import "NEBLGetTokenMetadataResponse.h"

@implementation NEBLGetTokenMetadataResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"tokenId": @"tokenId", @"divisibility": @"divisibility", @"lockStatus": @"lockStatus", @"aggregationPolicy": @"aggregationPolicy", @"totalSupply": @"totalSupply", @"numOfHolders": @"numOfHolders", @"numOfTransfers": @"numOfTransfers", @"numOfIssuance": @"numOfIssuance", @"numOfBurns": @"numOfBurns", @"firstBlock": @"firstBlock", @"issuanceTxid": @"issuanceTxid", @"issueAddress": @"issueAddress", @"metadataOfIssuence": @"metadataOfIssuence", @"metadataOfUtxo": @"metadataOfUtxo" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"tokenId", @"divisibility", @"lockStatus", @"aggregationPolicy", @"totalSupply", @"numOfHolders", @"numOfTransfers", @"numOfIssuance", @"numOfBurns", @"firstBlock", @"issuanceTxid", @"issueAddress", @"metadataOfIssuence", @"metadataOfUtxo"];
  return [optionalProperties containsObject:propertyName];
}

@end
