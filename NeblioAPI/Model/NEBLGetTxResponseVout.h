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


#import "NEBLGetTransactionInfoResponsePreviousOutput.h"
@protocol NEBLGetTransactionInfoResponsePreviousOutput;
@class NEBLGetTransactionInfoResponsePreviousOutput;



@protocol NEBLGetTxResponseVout
@end

@interface NEBLGetTxResponseVout : NEBLObject

/* Value of the output in NEBL [optional]
 */
@property(nonatomic) NSNumber* value;
/* Output index [optional]
 */
@property(nonatomic) NSNumber* n;

@property(nonatomic) NEBLGetTransactionInfoResponsePreviousOutput* scriptPubKey;
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
