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


#import "NEBLGetTxResponse.h"
@protocol NEBLGetTxResponse;
@class NEBLGetTxResponse;



@protocol NEBLGetTxsResponse
@end

@interface NEBLGetTxsResponse : NEBLObject

/* Number of pages of transactions [optional]
 */
@property(nonatomic) NSNumber* pagesTotal;
/* Array of transaction objects [optional]
 */
@property(nonatomic) NSArray<NEBLGetTxResponse>* txs;

@end
