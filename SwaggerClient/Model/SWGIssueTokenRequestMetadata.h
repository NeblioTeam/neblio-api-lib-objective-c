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


#import "SWGGetTokenMetadataResponseMetadataOfIssuanceDataUserData.h"
#import "SWGIssueTokenRequestMetadataEncryptions.h"
#import "SWGIssueTokenRequestMetadataRules.h"
#import "SWGIssueTokenRequestMetadataUrls.h"
@protocol SWGGetTokenMetadataResponseMetadataOfIssuanceDataUserData;
@class SWGGetTokenMetadataResponseMetadataOfIssuanceDataUserData;
@protocol SWGIssueTokenRequestMetadataEncryptions;
@class SWGIssueTokenRequestMetadataEncryptions;
@protocol SWGIssueTokenRequestMetadataRules;
@class SWGIssueTokenRequestMetadataRules;
@protocol SWGIssueTokenRequestMetadataUrls;
@class SWGIssueTokenRequestMetadataUrls;



@protocol SWGIssueTokenRequestMetadata
@end

@interface SWGIssueTokenRequestMetadata : SWGObject

/* Token Symbol it will be identified by (ex. NIBBL) [optional]
 */
@property(nonatomic) NSString* tokenName;
/* Name of token issuer [optional]
 */
@property(nonatomic) NSString* issuer;
/* Long name or description of token (ex. Nibble) [optional]
 */
@property(nonatomic) NSString* _description;

@property(nonatomic) SWGIssueTokenRequestMetadataUrls* urls;

@property(nonatomic) SWGGetTokenMetadataResponseMetadataOfIssuanceDataUserData* userData;
/* Array of encryption instruction objects for encrypting userData [optional]
 */
@property(nonatomic) NSArray<SWGIssueTokenRequestMetadataEncryptions>* encryptions;

@property(nonatomic) SWGIssueTokenRequestMetadataRules* rules;

@end