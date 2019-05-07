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
@protocol NEBLGetTokenMetadataResponseMetadataOfIssuenceDataUserData;
@class NEBLGetTokenMetadataResponseMetadataOfIssuenceDataUserData;



@protocol NEBLGetTokenMetadataResponseMetadataOfIssuenceData
@end

@interface NEBLGetTokenMetadataResponseMetadataOfIssuenceData : NEBLObject

/* Token symbol [optional]
 */
@property(nonatomic) NSString* tokenName;
/* Name of token issuer [optional]
 */
@property(nonatomic) NSString* issuer;
/* Token description [optional]
 */
@property(nonatomic) NSString* _description;

@property(nonatomic) NEBLGetTokenMetadataResponseMetadataOfIssuenceDataUserData* userData;

@end