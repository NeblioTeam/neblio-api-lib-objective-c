#import <Foundation/Foundation.h>
#import "SWGGetFaucetResponse.h"
#import "SWGApi.h"

/**
* Neblio REST API Suite
* APIs for Interacting with NTP1 Tokens & The Neblio Blockchain
*
* OpenAPI spec version: 1.1.1
* 
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/



@interface SWGTestnetFaucetApi: NSObject <SWGApi>

extern NSString* kSWGTestnetFaucetApiErrorDomain;
extern NSInteger kSWGTestnetFaucetApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(SWGApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Withdraws testnet NEBL to the specified address
/// Withdraw testnet NEBL to your Neblio Testnet address. By default amount is 1500000000 or 15 NEBL and has a max of 50 NEBL. Only 2 withdrawals allowed per 24 hour period. 
///
/// @param address Your Neblio Testnet Address
/// @param amount Amount of NEBL to withdrawal in satoshis (optional)
/// 
///  code:200 message:"Object containing the transaction ID of the withdrawal."
///
/// @return SWGGetFaucetResponse*
-(NSURLSessionTask*) testnetGetFaucetWithAddress: (NSString*) address
    amount: (NSNumber*) amount
    completionHandler: (void (^)(SWGGetFaucetResponse* output, NSError* error)) handler;



@end
