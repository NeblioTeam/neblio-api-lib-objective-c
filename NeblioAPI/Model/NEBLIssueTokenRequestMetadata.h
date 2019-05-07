#import <Foundation/Foundation.h>
#import "NEBLObject.h"

/**
* Neblio REST API Suite
* APIs for Interacting with NTP1 Tokens & The Neblio Blockchain
*
* OpenAPI spec version: 1.2.2
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "NEBLGetTokenMetadataResponseMetadataOfIssuenceDataUserData.h"
#import "NEBLIssueTokenRequestMetadataEncryptions.h"
#import "NEBLIssueTokenRequestMetadataRules.h"
#import "NEBLIssueTokenRequestMetadataUrls.h"
@protocol NEBLGetTokenMetadataResponseMetadataOfIssuenceDataUserData;
@class NEBLGetTokenMetadataResponseMetadataOfIssuenceDataUserData;
@protocol NEBLIssueTokenRequestMetadataEncryptions;
@class NEBLIssueTokenRequestMetadataEncryptions;
@protocol NEBLIssueTokenRequestMetadataRules;
@class NEBLIssueTokenRequestMetadataRules;
@protocol NEBLIssueTokenRequestMetadataUrls;
@class NEBLIssueTokenRequestMetadataUrls;



@protocol NEBLIssueTokenRequestMetadata
@end

@interface NEBLIssueTokenRequestMetadata : NEBLObject

/* Token Symbol it will be identified by (ex. NIBBL) [optional]
 */
@property(nonatomic) NSString* tokenName;
/* Name of token issuer [optional]
 */
@property(nonatomic) NSString* issuer;
/* Long name or description of token (ex. Nibble) [optional]
 */
@property(nonatomic) NSString* _description;

@property(nonatomic) NSArray<NEBLIssueTokenRequestMetadataUrls>* urls;

@property(nonatomic) NEBLGetTokenMetadataResponseMetadataOfIssuenceDataUserData* userData;
/* Array of encryption instruction objects for encrypting userData [optional]
 */
@property(nonatomic) NSArray<NEBLIssueTokenRequestMetadataEncryptions>* encryptions;

@property(nonatomic) NEBLIssueTokenRequestMetadataRules* rules;

@end
