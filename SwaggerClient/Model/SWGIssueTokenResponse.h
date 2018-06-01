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





@protocol SWGIssueTokenResponse
@end

@interface SWGIssueTokenResponse : SWGObject

/* TokenId of the to be issued token [optional]
 */
@property(nonatomic) NSString* tokenId;
/* Unsigned, raw transaction hex of the transaction to issue the token [optional]
 */
@property(nonatomic) NSString* txHex;

@end
