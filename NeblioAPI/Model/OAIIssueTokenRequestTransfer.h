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





@protocol OAIIssueTokenRequestTransfer
@end

@interface OAIIssueTokenRequestTransfer : OAIObject

/* Address to send the amount of issued tokens to [optional]
 */
@property(nonatomic) NSString* address;

@property(nonatomic) NSNumber* amount;

@end
