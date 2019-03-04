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





@protocol OAIGetTokenIdResponse
@end

@interface OAIGetTokenIdResponse : OAIObject

/* Unique ID of the token [optional]
 */
@property(nonatomic) NSString* tokenId;
/* String representing the token Symbol [optional]
 */
@property(nonatomic) NSString* tokenName;

@end