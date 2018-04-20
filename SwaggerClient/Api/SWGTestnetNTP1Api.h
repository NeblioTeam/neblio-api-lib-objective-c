#import <Foundation/Foundation.h>
#import "SWGBroadcastTxRequest.h"
#import "SWGBroadcastTxResponse.h"
#import "SWGBurnTokenRequest.h"
#import "SWGBurnTokenResponse.h"
#import "SWGError.h"
#import "SWGGetAddressInfoResponse.h"
#import "SWGGetTokenHoldersResponse.h"
#import "SWGGetTokenIdResponse.h"
#import "SWGGetTokenMetadataResponse.h"
#import "SWGGetTransactionInfoResponse.h"
#import "SWGIssueTokenRequest.h"
#import "SWGIssueTokenResponse.h"
#import "SWGSendTokenRequest.h"
#import "SWGSendTokenResponse.h"
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



@interface SWGTestnetNTP1Api: NSObject <SWGApi>

extern NSString* kSWGTestnetNTP1ApiErrorDomain;
extern NSInteger kSWGTestnetNTP1ApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(SWGApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Broadcasts a signed raw transaction to the network
/// Broadcasts a signed raw transaction to the network. If successful returns the txid of the broadcast trasnaction. 
///
/// @param body Object representing a transaction to broadcast
/// 
///  code:200 message:"An object containing the TXID if the broadcast was successful",
///  code:0 message:"Unexpected error"
///
/// @return SWGBroadcastTxResponse*
-(NSURLSessionTask*) testnetBroadcastTxWithBody: (SWGBroadcastTxRequest*) body
    completionHandler: (void (^)(SWGBroadcastTxResponse* output, NSError* error)) handler;


/// Builds a transaction that burns an NTP1 Token
/// Builds an unsigned raw transaction that burns an NTP1 token on the Neblio blockchain. 
///
/// @param body Object representing the token to be burned
/// 
///  code:200 message:"An object representing the tx to burn the token",
///  code:0 message:"Unexpected error"
///
/// @return SWGBurnTokenResponse*
-(NSURLSessionTask*) testnetBurnTokenWithBody: (SWGBurnTokenRequest*) body
    completionHandler: (void (^)(SWGBurnTokenResponse* output, NSError* error)) handler;


/// Information On a Neblio Address
/// Returns both NEBL and NTP1 token UTXOs held at the given address. 
///
/// @param address Neblio Address to get information on.
/// 
///  code:200 message:"An object with an array of UTXOs for this address",
///  code:0 message:"Unexpected error"
///
/// @return SWGGetAddressInfoResponse*
-(NSURLSessionTask*) testnetGetAddressInfoWithAddress: (NSString*) address
    completionHandler: (void (^)(SWGGetAddressInfoResponse* output, NSError* error)) handler;


/// Get Addresses Holding a Token
/// Returns the the the addresses holding a token and how many tokens are held 
///
/// @param tokenid TokenId to request metadata for
/// 
///  code:200 message:"An object containing all of the addresses holding a token",
///  code:0 message:"Unexpected error"
///
/// @return SWGGetTokenHoldersResponse*
-(NSURLSessionTask*) testnetGetTokenHoldersWithTokenid: (NSString*) tokenid
    completionHandler: (void (^)(SWGGetTokenHoldersResponse* output, NSError* error)) handler;


/// Returns the tokenId representing a token
/// Translates a token symbol to a tokenId if a token exists with that symbol on the network 
///
/// @param tokensymbol Token symbol
/// 
///  code:200 message:"Object containing the token symbol and ID, if token symbol does not exist on network, empty object is returned."
///
/// @return SWGGetTokenIdResponse*
-(NSURLSessionTask*) testnetGetTokenIdWithTokensymbol: (NSString*) tokensymbol
    completionHandler: (void (^)(SWGGetTokenIdResponse* output, NSError* error)) handler;


/// Get Issuance Metadata of Token
/// Returns the metadata associated with a token at time of issuance. 
///
/// @param tokenid TokenId to request metadata for
/// 
///  code:200 message:"An object containing the metadata of a token at issuance",
///  code:0 message:"Unexpected error"
///
/// @return SWGGetTokenMetadataResponse*
-(NSURLSessionTask*) testnetGetTokenMetadataOfIssuanceWithTokenid: (NSString*) tokenid
    completionHandler: (void (^)(SWGGetTokenMetadataResponse* output, NSError* error)) handler;


/// Get UTXO Metadata of Token
/// Returns the metadata associated with a token for that specific utxo instead of the issuance transaction. 
///
/// @param tokenid TokenId to request metadata for
/// @param utxo Specific UTXO to request metadata for
/// 
///  code:200 message:"An object containing the metadata of a token for a UTXO",
///  code:0 message:"Unexpected error"
///
/// @return SWGGetTokenMetadataResponse*
-(NSURLSessionTask*) testnetGetTokenMetadataOfUtxoWithTokenid: (NSString*) tokenid
    utxo: (NSString*) utxo
    completionHandler: (void (^)(SWGGetTokenMetadataResponse* output, NSError* error)) handler;


/// Information On an NTP1 Transaction
/// Returns detailed information regarding an NTP1 transaction. 
///
/// @param txid Neblio txid to get information on.
/// 
///  code:200 message:"An object represending this transaction",
///  code:0 message:"Unexpected error"
///
/// @return SWGGetTransactionInfoResponse*
-(NSURLSessionTask*) testnetGetTransactionInfoWithTxid: (NSString*) txid
    completionHandler: (void (^)(SWGGetTransactionInfoResponse* output, NSError* error)) handler;


/// Builds a transaction that issues a new NTP1 Token
/// Builds an unsigned raw transaction that issues a new NTP1 token on the Neblio blockchain. 
///
/// @param body Object representing the token to be created
/// 
///  code:200 message:"An object representing the token created",
///  code:0 message:"Unexpected error"
///
/// @return SWGIssueTokenResponse*
-(NSURLSessionTask*) testnetIssueTokenWithBody: (SWGIssueTokenRequest*) body
    completionHandler: (void (^)(SWGIssueTokenResponse* output, NSError* error)) handler;


/// Builds a transaction that sends an NTP1 Token
/// Builds an unsigned raw transaction that sends an NTP1 token on the Neblio blockchain. 
///
/// @param body Object representing the token to be sent
/// 
///  code:200 message:"An object representing the tx to send the token",
///  code:0 message:"Unexpected error"
///
/// @return SWGSendTokenResponse*
-(NSURLSessionTask*) testnetSendTokenWithBody: (SWGSendTokenRequest*) body
    completionHandler: (void (^)(SWGSendTokenResponse* output, NSError* error)) handler;



@end
