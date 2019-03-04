#import <Foundation/Foundation.h>
#import "NEBLObject.h"

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


#import "NEBLGetFaucetResponseData.h"
@protocol NEBLGetFaucetResponseData;
@class NEBLGetFaucetResponseData;



@protocol NEBLGetFaucetResponse
@end

@interface NEBLGetFaucetResponse : NEBLObject

/* Whether the withdrawal was successful [optional]
 */
@property(nonatomic) NSString* status;

@property(nonatomic) NEBLGetFaucetResponseData* data;

@end