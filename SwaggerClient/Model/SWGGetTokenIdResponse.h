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





@protocol SWGGetTokenIdResponse
@end

@interface SWGGetTokenIdResponse : SWGObject

/* Unique ID of the token [optional]
 */
@property(nonatomic) NSString* tokenId;
/* String representing the token Symbol [optional]
 */
@property(nonatomic) NSString* tokenName;

@end