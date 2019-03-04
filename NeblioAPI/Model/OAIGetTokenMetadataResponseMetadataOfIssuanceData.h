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


#import "OAIGetTokenMetadataResponseMetadataOfIssuanceDataUserData.h"
@protocol OAIGetTokenMetadataResponseMetadataOfIssuanceDataUserData;
@class OAIGetTokenMetadataResponseMetadataOfIssuanceDataUserData;



@protocol OAIGetTokenMetadataResponseMetadataOfIssuanceData
@end

@interface OAIGetTokenMetadataResponseMetadataOfIssuanceData : OAIObject

/* Token symbol [optional]
 */
@property(nonatomic) NSString* tokenName;
/* Name of token issuer [optional]
 */
@property(nonatomic) NSString* issuer;
/* Token description [optional]
 */
@property(nonatomic) NSString* _description;

@property(nonatomic) OAIGetTokenMetadataResponseMetadataOfIssuanceDataUserData* userData;

@end
