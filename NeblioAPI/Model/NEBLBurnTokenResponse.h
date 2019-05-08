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





@protocol NEBLBurnTokenResponse
@end

@interface NEBLBurnTokenResponse : NEBLObject

/* Unsigned, raw transaction hex of the transaction to burn the token [optional]
 */
@property(nonatomic) NSString* txHex;
/* Array of indexes transfering NTP1 tokens [optional]
 */
@property(nonatomic) NSArray<NSNumber*>* ntp1OutputIndexes;
/* Array of indexes of multisig outputs [optional]
 */
@property(nonatomic) NSArray<NSNumber*>* multisigOutputs;

@end
