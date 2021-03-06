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


#import "NEBLGetAddressInfoResponseTokens.h"
@protocol NEBLGetAddressInfoResponseTokens;
@class NEBLGetAddressInfoResponseTokens;



@protocol NEBLGetAddressInfoResponseUtxos
@end

@interface NEBLGetAddressInfoResponseUtxos : NEBLObject

/* Index of the UTXO at this address [optional]
 */
@property(nonatomic) NSNumber* index;
/* Txid of this UTXO [optional]
 */
@property(nonatomic) NSString* txid;
/* Blockheight of the UTXO [optional]
 */
@property(nonatomic) NSNumber* blockheight;
/* Blocktime of the UTXO [optional]
 */
@property(nonatomic) NSNumber* blocktime;
/* Object representing the scruptPubKey of the UTXO [optional]
 */
@property(nonatomic) NSObject* scriptPubKey;
/* Whether the UTXO has been used [optional]
 */
@property(nonatomic) NSNumber* used;
/* Value of the UTXO in NEBL satoshi [optional]
 */
@property(nonatomic) NSNumber* value;
/* Array of NTP1 tokens in this UTXO. [optional]
 */
@property(nonatomic) NSArray<NEBLGetAddressInfoResponseTokens>* tokens;

@end
