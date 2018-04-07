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


#import "SWGGetTokenMetadataResponseMetadataOfIssuance.h"
@protocol SWGGetTokenMetadataResponseMetadataOfIssuance;
@class SWGGetTokenMetadataResponseMetadataOfIssuance;



@protocol SWGGetTokenMetadataResponse
@end

@interface SWGGetTokenMetadataResponse : SWGObject

/* ID of the token [optional]
 */
@property(nonatomic) NSString* tokenId;
/* Decimal places the token is divisible to [optional]
 */
@property(nonatomic) NSNumber* divisibility;
/* Whether issuance of more tokens is locked [optional]
 */
@property(nonatomic) NSNumber* lockStatus;
/* Whether the tokens are aggregatable [optional]
 */
@property(nonatomic) NSString* aggregationPolicy;
/* Total number of tokens in supply [optional]
 */
@property(nonatomic) NSNumber* totalSupply;
/* Total number of addresses this token is held at [optional]
 */
@property(nonatomic) NSNumber* numOfHolders;
/* Total number of transactions of this token [optional]
 */
@property(nonatomic) NSNumber* numOfTransfers;
/* Total number of times this token has been issued [optional]
 */
@property(nonatomic) NSNumber* numofIssuance;
/* Number of times tokens have been burned [optional]
 */
@property(nonatomic) NSNumber* numOfBurns;
/* Block number token was issued in [optional]
 */
@property(nonatomic) NSNumber* firstBlock;
/* TXID the token was issued with [optional]
 */
@property(nonatomic) NSString* issuanceTxid;
/* Address that issued the tokens [optional]
 */
@property(nonatomic) NSString* issueAddress;

@property(nonatomic) SWGGetTokenMetadataResponseMetadataOfIssuance* metadataOfIssuance;

@property(nonatomic) SWGGetTokenMetadataResponseMetadataOfIssuance* metadataOfUtxo;

@end
