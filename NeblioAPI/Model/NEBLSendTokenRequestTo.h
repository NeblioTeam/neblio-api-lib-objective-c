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





@protocol NEBLSendTokenRequestTo
@end

@interface NEBLSendTokenRequestTo : NEBLObject

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
