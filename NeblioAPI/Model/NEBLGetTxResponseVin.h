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


#import "NEBLGetTransactionInfoResponseScriptSig.h"
@protocol NEBLGetTransactionInfoResponseScriptSig;
@class NEBLGetTransactionInfoResponseScriptSig;



@protocol NEBLGetTxResponseVin
@end

@interface NEBLGetTxResponseVin : NEBLObject

/* TXID of the input [optional]
 */
@property(nonatomic) NSString* txid;
/* output index [optional]
 */
@property(nonatomic) NSNumber* vout;

@property(nonatomic) NEBLGetTransactionInfoResponseScriptSig* scriptSig;

@property(nonatomic) NSNumber* sequence;
/* Value of input in NEBL [optional]
 */
@property(nonatomic) NSNumber* value;
/* Value of input in NEBL satoshi [optional]
 */
@property(nonatomic) NSNumber* valueSat;
/* input index [optional]
 */
@property(nonatomic) NSNumber* n;

@end
