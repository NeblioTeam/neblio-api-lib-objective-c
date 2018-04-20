#import <Foundation/Foundation.h>
#import "SWGObject.h"

/**
* Neblio REST API Suite
* APIs for Interacting with NTP1 Tokens & The Neblio Blockchain
*
* OpenAPI spec version: 1.1.1
* 
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/


#import "SWGGetAddressInfoResponseUtxos.h"
@protocol SWGGetAddressInfoResponseUtxos;
@class SWGGetAddressInfoResponseUtxos;



@protocol SWGGetAddressInfoResponse
@end

@interface SWGGetAddressInfoResponse : SWGObject

/* The Neblio Address [optional]
 */
@property(nonatomic) NSString* address;
/* Array of UTXOs held at this address. [optional]
 */
@property(nonatomic) NSArray<SWGGetAddressInfoResponseUtxos>* utxos;

@end
