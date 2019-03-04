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





@protocol OAIGetAddressResponse
@end

@interface OAIGetAddressResponse : OAIObject

/* Address in string form [optional]
 */
@property(nonatomic) NSString* addrStr;
/* NEBL balance [optional]
 */
@property(nonatomic) NSNumber* balance;
/* NEBL balance in satoshis [optional]
 */
@property(nonatomic) NSNumber* balanceSat;
/* Total NEBL received [optional]
 */
@property(nonatomic) NSNumber* totalReceived;
/* Total NEBL received in satoshis [optional]
 */
@property(nonatomic) NSNumber* totalReceivedSat;
/* Total NEBL sent [optional]
 */
@property(nonatomic) NSNumber* totalSent;
/* Total NEBL sent satoshis [optional]
 */
@property(nonatomic) NSNumber* totalSentSat;
/* Unconfirmed NEBL balance [optional]
 */
@property(nonatomic) NSNumber* unconfirmedBalance;
/* Unconfirmed NEBL balance in satoshis [optional]
 */
@property(nonatomic) NSNumber* unconfirmedBalanceSat;
/* Number of unconfirmed transactions for this address [optional]
 */
@property(nonatomic) NSNumber* unconfirmedTxAppearances;
/* Number of transactions for this address [optional]
 */
@property(nonatomic) NSNumber* txAppearances;
/* Array of transaction ids for this address [optional]
 */
@property(nonatomic) NSArray<NSString*>* transactions;

@end