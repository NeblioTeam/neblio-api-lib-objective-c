#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* Neblio REST API Suite
* APIs for Interacting with NTP1 Tokens & The Neblio Blockchain
*
* OpenAPI spec version: 1.2.1
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "OAIBurnTokenRequestBurn.h"
#import "OAISendTokenRequestTo.h"
@protocol OAIBurnTokenRequestBurn;
@class OAIBurnTokenRequestBurn;
@protocol OAISendTokenRequestTo;
@class OAISendTokenRequestTo;



@protocol OAIBurnTokenRequest
@end

@interface OAIBurnTokenRequest : OAIObject

/* Fee in satoshi to include in the issuance transaction min 10000 (0.0001 NEBL) 
 */
@property(nonatomic) NSNumber* fee;
/* Array of addresses to send the token from [optional]
 */
@property(nonatomic) NSArray<NSString*>* from;

@property(nonatomic) NSArray<OAISendTokenRequestTo>* transfer;
/* Array of objects representing tokens to be burned 
 */
@property(nonatomic) NSArray<OAIBurnTokenRequestBurn>* burn;

@end