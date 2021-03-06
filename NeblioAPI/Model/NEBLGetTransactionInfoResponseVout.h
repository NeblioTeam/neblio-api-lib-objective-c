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


#import "NEBLGetTransactionInfoResponsePreviousOutput.h"
#import "NEBLGetTransactionInfoResponseTokens.h"
@protocol NEBLGetTransactionInfoResponsePreviousOutput;
@class NEBLGetTransactionInfoResponsePreviousOutput;
@protocol NEBLGetTransactionInfoResponseTokens;
@class NEBLGetTransactionInfoResponseTokens;



@protocol NEBLGetTransactionInfoResponseVout
@end

@interface NEBLGetTransactionInfoResponseVout : NEBLObject

/* Value of the output in NEBL satoshi [optional]
 */
@property(nonatomic) NSNumber* value;
/* Output index [optional]
 */
@property(nonatomic) NSNumber* n;

@property(nonatomic) NEBLGetTransactionInfoResponsePreviousOutput* scriptPubKey;

@property(nonatomic) NSArray<NEBLGetTransactionInfoResponseTokens>* tokens;
/* Whether this output has now been used [optional]
 */
@property(nonatomic) NSNumber* used;
/* Blockheight of this transaction [optional]
 */
@property(nonatomic) NSNumber* blockheight;
/* Blockheight this output was used in [optional]
 */
@property(nonatomic) NSNumber* usedBlockheight;
/* TXID this output was used in [optional]
 */
@property(nonatomic) NSString* usedTxid;

@end
