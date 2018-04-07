#import <Foundation/Foundation.h>
#import "SWGObject.h"

/**
* Neblio REST API Suite
* APIs for Interacting with NTP1 Tokens & The Neblio Blockchain
*
* OpenAPI spec version: 1.0.0
* 
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/





@protocol SWGSendTokenRequestTo
@end

@interface SWGSendTokenRequestTo : SWGObject

/* Address to transfer tokens to [optional]
 */
@property(nonatomic) NSString* address;
/* Number of tokens to send [optional]
 */
@property(nonatomic) NSNumber* amount;
/* ID of token we are sending [optional]
 */
@property(nonatomic) NSString* tokenId;

@end
