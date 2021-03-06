#import <Foundation/Foundation.h>
#import "NEBLObject.h"

/**
* Neblio REST API Suite
* APIs for Interacting with NTP1 Tokens & The Neblio Blockchain
*
* OpenAPI spec version: 1.3.0
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/





@protocol NEBLGetAddressInfoResponseTokens
@end

@interface NEBLGetAddressInfoResponseTokens : NEBLObject

/* Unique NTP1 identifier for this token [optional]
 */
@property(nonatomic) NSString* tokenId;
/* Number of Tokens [optional]
 */
@property(nonatomic) NSNumber* amount;
/* TXID the token originally was issued in [optional]
 */
@property(nonatomic) NSString* issueTxid;
/* Decimal places the token is divisible to [optional]
 */
@property(nonatomic) NSNumber* divisibility;
/* Whether the token is locked, preventing more from being issued [optional]
 */
@property(nonatomic) NSNumber* lockStatus;
/* Whether the tokens can be aggregated together [optional]
 */
@property(nonatomic) NSString* aggregationPolicy;

@end
