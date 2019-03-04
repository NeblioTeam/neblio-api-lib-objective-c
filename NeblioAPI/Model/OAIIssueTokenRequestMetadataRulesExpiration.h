#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* Neblio REST API Suite
* APIs for Interacting with NTP1 Tokens & The Neblio Blockchain
*
* OpenAPI spec version: 1.2.1
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/





@protocol OAIIssueTokenRequestMetadataRulesExpiration
@end

@interface OAIIssueTokenRequestMetadataRulesExpiration : OAIObject

/* Blockheight at wh [optional]
 */
@property(nonatomic) NSNumber* validUntil;
/* Whether this rule can be modified in future transactions [optional]
 */
@property(nonatomic) NSNumber* locked;

@end