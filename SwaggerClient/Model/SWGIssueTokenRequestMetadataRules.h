#import <Foundation/Foundation.h>
#import "SWGObject.h"

/**
* Neblio REST API Suite
* APIs for Interacting with NTP1 Tokens & The Neblio Blockchain
*
* OpenAPI spec version: 1.0.0
* 
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/


#import "SWGIssueTokenRequestMetadataRulesExpiration.h"
#import "SWGIssueTokenRequestMetadataRulesFees.h"
#import "SWGIssueTokenRequestMetadataRulesHolders.h"
@protocol SWGIssueTokenRequestMetadataRulesExpiration;
@class SWGIssueTokenRequestMetadataRulesExpiration;
@protocol SWGIssueTokenRequestMetadataRulesFees;
@class SWGIssueTokenRequestMetadataRulesFees;
@protocol SWGIssueTokenRequestMetadataRulesHolders;
@class SWGIssueTokenRequestMetadataRulesHolders;



@protocol SWGIssueTokenRequestMetadataRules
@end

@interface SWGIssueTokenRequestMetadataRules : SWGObject


@property(nonatomic) SWGIssueTokenRequestMetadataRulesFees* fees;
/* Array of objects describing what addresses can hold the token [optional]
 */
@property(nonatomic) NSArray<SWGIssueTokenRequestMetadataRulesHolders>* holders;

@property(nonatomic) SWGIssueTokenRequestMetadataRulesExpiration* expiration;

@end
