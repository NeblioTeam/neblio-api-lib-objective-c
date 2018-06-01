#import <Foundation/Foundation.h>
#import "SWGObject.h"

/**
* Neblio REST API Suite
* APIs for Interacting with NTP1 Tokens & The Neblio Blockchain
*
* OpenAPI spec version: 1.2.0
* 
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/





@protocol SWGBurnTokenResponse
@end

@interface SWGBurnTokenResponse : SWGObject

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
