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


#import "NEBLGetTxResponseVin.h"
#import "NEBLGetTxResponseVout.h"
@protocol NEBLGetTxResponseVin;
@class NEBLGetTxResponseVin;
@protocol NEBLGetTxResponseVout;
@class NEBLGetTxResponseVout;



@protocol NEBLGetTxResponse
@end

@interface NEBLGetTxResponse : NEBLObject

/* TXID of transaction [optional]
 */
@property(nonatomic) NSString* txid;
/* Transaction version [optional]
 */
@property(nonatomic) NSNumber* version;
/* Transaction locktime [optional]
 */
@property(nonatomic) NSNumber* locktime;
/* Array of transaction inputs [optional]
 */
@property(nonatomic) NSArray<NEBLGetTxResponseVin>* vin;
/* Array of transaction outputs [optional]
 */
@property(nonatomic) NSArray<NEBLGetTxResponseVout>* vout;
/* Block time of this transaction [optional]
 */
@property(nonatomic) NSNumber* blocktime;
/* Block height of this transaction [optional]
 */
@property(nonatomic) NSNumber* blockheight;
/* Total NEBL sent in this transaction in satoshis [optional]
 */
@property(nonatomic) NSNumber* totalsent;
/* Total NEBL used as fee for this transcation in satoshis [optional]
 */
@property(nonatomic) NSNumber* fee;
/* Hash of the block this transaction is in [optional]
 */
@property(nonatomic) NSString* blockhash;
/* Transaction time [optional]
 */
@property(nonatomic) NSNumber* time;
/* Number of transaction confirmations [optional]
 */
@property(nonatomic) NSNumber* confirmations;
/* Total NEBL output in this transaction [optional]
 */
@property(nonatomic) NSNumber* valueOut;
/* Total NEBL input in this transaction [optional]
 */
@property(nonatomic) NSNumber* valueIn;
/* Total NEBL used in fees for this transaction [optional]
 */
@property(nonatomic) NSNumber* fees;
/* Transcation size in bytes [optional]
 */
@property(nonatomic) NSNumber* size;

@end
