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


#import "SWGBurnTokenRequestBurn.h"
#import "SWGSendTokenRequestTo.h"
@protocol SWGBurnTokenRequestBurn;
@class SWGBurnTokenRequestBurn;
@protocol SWGSendTokenRequestTo;
@class SWGSendTokenRequestTo;



@protocol SWGBurnTokenRequest
@end

@interface SWGBurnTokenRequest : SWGObject

/* Fee in satoshi to include in the issuance transaction min 10000 (0.0001 NEBL) 
 */
@property(nonatomic) NSNumber* fee;
/* Array of addresses to send the token from [optional]
 */
@property(nonatomic) NSArray<NSString*>* from;

@property(nonatomic) NSArray<SWGSendTokenRequestTo>* transfer;
/* Array of objects representing tokens to be burned 
 */
@property(nonatomic) NSArray<SWGBurnTokenRequestBurn>* burn;

@end
