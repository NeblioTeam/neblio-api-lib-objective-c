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





@protocol NEBLGetTokenIdResponse
@end

@interface NEBLGetTokenIdResponse : NEBLObject

/* Unique ID of the token [optional]
 */
@property(nonatomic) NSString* tokenId;
/* String representing the token Symbol [optional]
 */
@property(nonatomic) NSString* tokenName;

@end
