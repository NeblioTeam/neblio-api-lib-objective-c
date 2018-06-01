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





@protocol SWGGetSyncResponse
@end

@interface SWGGetSyncResponse : SWGObject

/* Current sync status [optional]
 */
@property(nonatomic) NSString* status;
/* Current blockchain height [optional]
 */
@property(nonatomic) NSNumber* blockChainHeight;
/* Current sync percentage [optional]
 */
@property(nonatomic) NSNumber* syncPercentage;
/* Height node is synced to [optional]
 */
@property(nonatomic) NSNumber* height;
/* Recent sync error messages [optional]
 */
@property(nonatomic) NSString* error;
/* Node type [optional]
 */
@property(nonatomic) NSString* type;

@end
