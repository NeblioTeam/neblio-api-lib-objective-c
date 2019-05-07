#import <Foundation/Foundation.h>
#import "NEBLObject.h"

/**
* Neblio REST API Suite
* APIs for Interacting with NTP1 Tokens & The Neblio Blockchain
*
* OpenAPI spec version: 1.2.2
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "NEBLIssueTokenRequestMetadataRulesFeesItems.h"
@protocol NEBLIssueTokenRequestMetadataRulesFeesItems;
@class NEBLIssueTokenRequestMetadataRulesFeesItems;



@protocol NEBLIssueTokenRequestMetadataRulesFees
@end

@interface NEBLIssueTokenRequestMetadataRulesFees : NEBLObject

/* Array of objects describing fee rules [optional]
 */
@property(nonatomic) NSArray<NEBLIssueTokenRequestMetadataRulesFeesItems>* items;
/* Whether this rule can be modified in future transactions [optional]
 */
@property(nonatomic) NSNumber* locked;

@end
