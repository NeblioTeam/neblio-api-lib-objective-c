#import <Foundation/Foundation.h>
#import "NEBLObject.h"

/**
* Neblio REST API Suite
* APIs for Interacting with NTP1 Tokens & The Neblio Blockchain
*
* OpenAPI spec version: 1.2.4
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "NEBLGetAddressInfoResponseUtxos.h"
@protocol NEBLGetAddressInfoResponseUtxos;
@class NEBLGetAddressInfoResponseUtxos;



@protocol NEBLGetAddressInfoResponse
@end

@interface NEBLGetAddressInfoResponse : NEBLObject

/* The Neblio Address [optional]
 */
@property(nonatomic) NSString* address;
/* Array of UTXOs held at this address. [optional]
 */
@property(nonatomic) NSArray<NEBLGetAddressInfoResponseUtxos>* utxos;

@end
