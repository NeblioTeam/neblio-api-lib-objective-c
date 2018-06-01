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





@protocol SWGIssueTokenRequestMetadataRulesHolders
@end

@interface SWGIssueTokenRequestMetadataRulesHolders : SWGObject

/* Address that can hold the token [optional]
 */
@property(nonatomic) NSString* address;
/* Whether this rule can be modified in future transactions [optional]
 */
@property(nonatomic) NSNumber* locked;

@end
