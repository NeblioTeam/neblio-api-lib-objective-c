#import <Foundation/Foundation.h>
#import "OAIBroadcastTxResponse.h"
#import "OAIError.h"
#import "OAIGetAddressResponse.h"
#import "OAIGetBlockIndexResponse.h"
#import "OAIGetBlockResponse.h"
#import "OAIGetRawTxResponse.h"
#import "OAIGetSyncResponse.h"
#import "OAIGetTxResponse.h"
#import "OAIGetTxsResponse.h"
#import "OAISendTxRequest.h"
#import "OAIApi.h"

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



@interface OAIInsightApi: NSObject <OAIApi>

extern NSString* kOAIInsightApiErrorDomain;
extern NSInteger kOAIInsightApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Returns address object
/// Returns NEBL address object containing information on a specific address
///
/// @param address Address
/// 
///  code:200 message:"Object containing address info"
///
/// @return OAIGetAddressResponse*
-(NSURLSessionTask*) getAddressWithAddress: (NSString*) address
    completionHandler: (void (^)(OAIGetAddressResponse* output, NSError* error)) handler;


/// Returns address balance in sats
/// Returns NEBL address balance in satoshis
///
/// @param address Address
/// 
///  code:200 message:"Address balance"
///
/// @return NSNumber*
-(NSURLSessionTask*) getAddressBalanceWithAddress: (NSString*) address
    completionHandler: (void (^)(NSNumber* output, NSError* error)) handler;


/// Returns total received by address in sats
/// Returns total NEBL received by address in satoshis
///
/// @param address Address
/// 
///  code:200 message:"Total received by address"
///
/// @return NSNumber*
-(NSURLSessionTask*) getAddressTotalReceivedWithAddress: (NSString*) address
    completionHandler: (void (^)(NSNumber* output, NSError* error)) handler;


/// Returns total sent by address in sats
/// Returns total NEBL sent by address in satoshis
///
/// @param address Address
/// 
///  code:200 message:"Total sent by address"
///
/// @return NSNumber*
-(NSURLSessionTask*) getAddressTotalSentWithAddress: (NSString*) address
    completionHandler: (void (^)(NSNumber* output, NSError* error)) handler;


/// Returns address unconfirmed balance in sats
/// Returns NEBL address unconfirmed balance in satoshis
///
/// @param address Address
/// 
///  code:200 message:"Address unconfirmed balance"
///
/// @return NSNumber*
-(NSURLSessionTask*) getAddressUnconfirmedBalanceWithAddress: (NSString*) address
    completionHandler: (void (^)(NSNumber* output, NSError* error)) handler;


/// Returns all UTXOs at a given address
/// Returns information on each Unspent Transaction Output contained at an address
///
/// @param address Address
/// 
///  code:200 message:"UTXOs at an address"
///
/// @return NSArray<NSObject*>*
-(NSURLSessionTask*) getAddressUtxosWithAddress: (NSString*) address
    completionHandler: (void (^)(NSArray<NSObject*>* output, NSError* error)) handler;


/// Returns information regarding a Neblio block
/// Returns blockchain data for a given block based upon the block hash
///
/// @param blockhash Block Hash
/// 
///  code:200 message:"Object containing all information on a blockchain block"
///
/// @return OAIGetBlockResponse*
-(NSURLSessionTask*) getBlockWithBlockhash: (NSString*) blockhash
    completionHandler: (void (^)(OAIGetBlockResponse* output, NSError* error)) handler;


/// Returns block hash of block
/// Returns the block hash of a block at a given block index
///
/// @param blockindex Block Index
/// 
///  code:200 message:"Object containing block hash"
///
/// @return OAIGetBlockIndexResponse*
-(NSURLSessionTask*) getBlockIndexWithBlockindex: (NSNumber*) blockindex
    completionHandler: (void (^)(OAIGetBlockIndexResponse* output, NSError* error)) handler;


/// Returns raw transaction hex
/// Returns raw transaction hex representing a NEBL transaction
///
/// @param txid Transaction ID
/// 
///  code:200 message:"Object containing raw hex of transaction"
///
/// @return OAIGetRawTxResponse*
-(NSURLSessionTask*) getRawTxWithTxid: (NSString*) txid
    completionHandler: (void (^)(OAIGetRawTxResponse* output, NSError* error)) handler;


/// Utility API for calling several blockchain node functions
/// Utility API for calling several blockchain node functions - getInfo, getDifficulty, getBestBlockHash, getLastBlockHash
///
/// @param q Function to call, getInfo, getDifficulty, getBestBlockHash, or getLastBlockHash (optional)
/// 
///  code:200 message:"Function Response"
///
/// @return NSObject*
-(NSURLSessionTask*) getStatusWithQ: (NSString*) q
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler;


/// Get node sync status
/// Returns information on the node's sync progress
///
/// 
///  code:200 message:"Sync Info"
///
/// @return OAIGetSyncResponse*
-(NSURLSessionTask*) getSyncWithCompletionHandler: 
    (void (^)(OAIGetSyncResponse* output, NSError* error)) handler;


/// Returns transaction object
/// Returns NEBL transaction object representing a NEBL transaction
///
/// @param txid Transaction ID
/// 
///  code:200 message:"Object containing transaction info"
///
/// @return OAIGetTxResponse*
-(NSURLSessionTask*) getTxWithTxid: (NSString*) txid
    completionHandler: (void (^)(OAIGetTxResponse* output, NSError* error)) handler;


/// Get transactions by block or address
/// Returns all transactions by block or address
///
/// @param address Address (optional)
/// @param block Block Hash (optional)
/// @param pageNum Page number to display (optional)
/// 
///  code:200 message:"List of transactions"
///
/// @return OAIGetTxsResponse*
-(NSURLSessionTask*) getTxsWithAddress: (NSString*) address
    block: (NSString*) block
    pageNum: (NSNumber*) pageNum
    completionHandler: (void (^)(OAIGetTxsResponse* output, NSError* error)) handler;


/// Broadcasts a signed raw transaction to the network (not NTP1 specific)
/// Broadcasts a signed raw transaction to the network. If successful returns the txid of the broadcast trasnaction. 
///
/// @param sendTxRequest Object representing a transaction to broadcast
/// 
///  code:200 message:"An object containing the TXID if the broadcast was successful",
///  code:0 message:"Unexpected error"
///
/// @return OAIBroadcastTxResponse*
-(NSURLSessionTask*) sendTxWithSendTxRequest: (OAISendTxRequest*) sendTxRequest
    completionHandler: (void (^)(OAIBroadcastTxResponse* output, NSError* error)) handler;



@end