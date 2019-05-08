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





@protocol NEBLIssueTokenRequestFlags
@end

@interface NEBLIssueTokenRequestFlags : NEBLObject

/* If true change will be split into 2 outputs, one for NEBL change and one for NTP1 change (recommended) [optional]
 */
@property(nonatomic) NSNumber* splitChange;

@end
