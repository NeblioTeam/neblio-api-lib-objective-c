#import <Foundation/Foundation.h>
#import "NEBLObject.h"

/**
* Neblio REST API Suite
* APIs for Interacting with NTP1 Tokens & The Neblio Blockchain
*
* OpenAPI spec version: 1.2.3
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/





@protocol NEBLIssueTokenRequestMetadataRulesFeesItems
@end

@interface NEBLIssueTokenRequestMetadataRulesFeesItems : NEBLObject

/* Address fee is auto sent to [optional]
 */
@property(nonatomic) NSString* address;
/* How fee should be paid, either with a tokenId, or with NEBL if null [optional]
 */
@property(nonatomic) NSString* tokenId;
/* Amount of NTP1 token, or NEBL (in satoshi) to pay as fee [optional]
 */
@property(nonatomic) NSString* value;

@end
