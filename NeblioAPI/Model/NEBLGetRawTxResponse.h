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





@protocol NEBLGetRawTxResponse
@end

@interface NEBLGetRawTxResponse : NEBLObject

/* Raw hex representing the transaction [optional]
 */
@property(nonatomic) NSString* rawtx;

@end