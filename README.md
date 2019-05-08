# NeblioAPI

APIs for Interacting with NTP1 Tokens & The Neblio Blockchain

This ObjC package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.2.4
- Package version: 
- Build package: org.openapitools.codegen.languages.ObjcClientCodegen

## Requirements

The SDK requires [**ARC (Automatic Reference Counting)**](http://stackoverflow.com/questions/7778356/how-to-enable-disable-automatic-reference-counting) to be enabled in the Xcode project.

## Installation & Usage
### Install from Github using [CocoaPods](https://cocoapods.org/)

Add the following to the Podfile:

```ruby
pod 'NeblioAPI', :git => 'https://github.com/NeblioTeam/neblio-api-lib-objective-c.git'
```

To specify a particular branch, append `, :branch => 'branch-name-here'`

To specify a particular commit, append `, :commit => '11aa22'`

### Install from local path using [CocoaPods](https://cocoapods.org/)

Put the SDK under your project folder (e.g. /path/to/objc_project/Vendor/NeblioAPI) and then add the following to the Podfile:

```ruby
pod 'NeblioAPI', :path => 'Vendor/NeblioAPI'
```

### Usage

Import the following:

```objc
#import <NeblioAPI/NEBLApiClient.h>
#import <NeblioAPI/NEBLDefaultConfiguration.h>
// load models
#import <NeblioAPI/NEBLBroadcastTxRequest.h>
#import <NeblioAPI/NEBLBroadcastTxResponse.h>
#import <NeblioAPI/NEBLBurnTokenRequest.h>
#import <NeblioAPI/NEBLBurnTokenRequestBurn.h>
#import <NeblioAPI/NEBLBurnTokenResponse.h>
#import <NeblioAPI/NEBLError.h>
#import <NeblioAPI/NEBLGetAddressInfoResponse.h>
#import <NeblioAPI/NEBLGetAddressInfoResponseTokens.h>
#import <NeblioAPI/NEBLGetAddressInfoResponseUtxos.h>
#import <NeblioAPI/NEBLGetAddressResponse.h>
#import <NeblioAPI/NEBLGetBlockIndexResponse.h>
#import <NeblioAPI/NEBLGetBlockResponse.h>
#import <NeblioAPI/NEBLGetFaucetResponse.h>
#import <NeblioAPI/NEBLGetFaucetResponseData.h>
#import <NeblioAPI/NEBLGetRawTxResponse.h>
#import <NeblioAPI/NEBLGetSyncResponse.h>
#import <NeblioAPI/NEBLGetTokenHoldersResponse.h>
#import <NeblioAPI/NEBLGetTokenHoldersResponseHolders.h>
#import <NeblioAPI/NEBLGetTokenIdResponse.h>
#import <NeblioAPI/NEBLGetTokenMetadataResponse.h>
#import <NeblioAPI/NEBLGetTokenMetadataResponseMetadataOfIssuence.h>
#import <NeblioAPI/NEBLGetTokenMetadataResponseMetadataOfIssuenceData.h>
#import <NeblioAPI/NEBLGetTokenMetadataResponseMetadataOfIssuenceDataUserData.h>
#import <NeblioAPI/NEBLGetTokenMetadataResponseMetadataOfIssuenceDataUserDataMeta.h>
#import <NeblioAPI/NEBLGetTokenMetadataResponseMetadataOfUtxo.h>
#import <NeblioAPI/NEBLGetTokenMetadataResponseMetadataOfUtxoUserData.h>
#import <NeblioAPI/NEBLGetTransactionInfoResponse.h>
#import <NeblioAPI/NEBLGetTransactionInfoResponsePreviousOutput.h>
#import <NeblioAPI/NEBLGetTransactionInfoResponseScriptSig.h>
#import <NeblioAPI/NEBLGetTransactionInfoResponseTokens.h>
#import <NeblioAPI/NEBLGetTransactionInfoResponseVin.h>
#import <NeblioAPI/NEBLGetTransactionInfoResponseVout.h>
#import <NeblioAPI/NEBLGetTxResponse.h>
#import <NeblioAPI/NEBLGetTxResponseVin.h>
#import <NeblioAPI/NEBLGetTxResponseVout.h>
#import <NeblioAPI/NEBLGetTxsResponse.h>
#import <NeblioAPI/NEBLIssueTokenRequest.h>
#import <NeblioAPI/NEBLIssueTokenRequestFlags.h>
#import <NeblioAPI/NEBLIssueTokenRequestMetadata.h>
#import <NeblioAPI/NEBLIssueTokenRequestMetadataEncryptions.h>
#import <NeblioAPI/NEBLIssueTokenRequestMetadataRules.h>
#import <NeblioAPI/NEBLIssueTokenRequestMetadataRulesExpiration.h>
#import <NeblioAPI/NEBLIssueTokenRequestMetadataRulesFees.h>
#import <NeblioAPI/NEBLIssueTokenRequestMetadataRulesFeesItems.h>
#import <NeblioAPI/NEBLIssueTokenRequestMetadataRulesHolders.h>
#import <NeblioAPI/NEBLIssueTokenRequestMetadataUrls.h>
#import <NeblioAPI/NEBLIssueTokenRequestTransfer.h>
#import <NeblioAPI/NEBLIssueTokenResponse.h>
#import <NeblioAPI/NEBLRpcRequest.h>
#import <NeblioAPI/NEBLRpcResponse.h>
#import <NeblioAPI/NEBLSendTokenRequest.h>
#import <NeblioAPI/NEBLSendTokenRequestTo.h>
#import <NeblioAPI/NEBLSendTokenResponse.h>
#import <NeblioAPI/NEBLSendTxRequest.h>
// load API classes for accessing endpoints
#import <NeblioAPI/NEBLInsightApi.h>
#import <NeblioAPI/NEBLJSONRPCApi.h>
#import <NeblioAPI/NEBLNTP1Api.h>
#import <NeblioAPI/NEBLTestnetFaucetApi.h>
#import <NeblioAPI/NEBLTestnetInsightApi.h>
#import <NeblioAPI/NEBLTestnetNTP1Api.h>

```

## Recommendation

It's recommended to create an instance of ApiClient per thread in a multi-threaded environment to avoid any potential issues.

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```objc


NSString* *address = @"address_example"; // Address

NEBLInsightApi *apiInstance = [[NEBLInsightApi alloc] init];

// Returns address object
[apiInstance getAddressWithAddress:address
              completionHandler: ^(NEBLGetAddressResponse* output, NSError* error) {
                            if (output) {
                                NSLog(@"%@", output);
                            }
                            if (error) {
                                NSLog(@"Error: %@", error);
                            }
                        }];

```

## Documentation for API Endpoints

All URIs are relative to *https://ntp1node.nebl.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*NEBLInsightApi* | [**getAddress**](docs/NEBLInsightApi.md#getaddress) | **GET** /ins/addr/{address} | Returns address object
*NEBLInsightApi* | [**getAddressBalance**](docs/NEBLInsightApi.md#getaddressbalance) | **GET** /ins/addr/{address}/balance | Returns address balance in sats
*NEBLInsightApi* | [**getAddressTotalReceived**](docs/NEBLInsightApi.md#getaddresstotalreceived) | **GET** /ins/addr/{address}/totalReceived | Returns total received by address in sats
*NEBLInsightApi* | [**getAddressTotalSent**](docs/NEBLInsightApi.md#getaddresstotalsent) | **GET** /ins/addr/{address}/totalSent | Returns total sent by address in sats
*NEBLInsightApi* | [**getAddressUnconfirmedBalance**](docs/NEBLInsightApi.md#getaddressunconfirmedbalance) | **GET** /ins/addr/{address}/unconfirmedBalance | Returns address unconfirmed balance in sats
*NEBLInsightApi* | [**getAddressUtxos**](docs/NEBLInsightApi.md#getaddressutxos) | **GET** /ins/addr/{address}/utxo | Returns all UTXOs at a given address
*NEBLInsightApi* | [**getBlock**](docs/NEBLInsightApi.md#getblock) | **GET** /ins/block/{blockhash} | Returns information regarding a Neblio block
*NEBLInsightApi* | [**getBlockIndex**](docs/NEBLInsightApi.md#getblockindex) | **GET** /ins/block-index/{blockindex} | Returns block hash of block
*NEBLInsightApi* | [**getRawTx**](docs/NEBLInsightApi.md#getrawtx) | **GET** /ins/rawtx/{txid} | Returns raw transaction hex
*NEBLInsightApi* | [**getStatus**](docs/NEBLInsightApi.md#getstatus) | **GET** /ins/status | Utility API for calling several blockchain node functions
*NEBLInsightApi* | [**getSync**](docs/NEBLInsightApi.md#getsync) | **GET** /ins/sync | Get node sync status
*NEBLInsightApi* | [**getTx**](docs/NEBLInsightApi.md#gettx) | **GET** /ins/tx/{txid} | Returns transaction object
*NEBLInsightApi* | [**getTxs**](docs/NEBLInsightApi.md#gettxs) | **GET** /ins/txs | Get transactions by block or address
*NEBLInsightApi* | [**sendTx**](docs/NEBLInsightApi.md#sendtx) | **POST** /ins/tx/send | Broadcasts a signed raw transaction to the network (not NTP1 specific)
*NEBLJSONRPCApi* | [**jsonRpc**](docs/NEBLJSONRPCApi.md#jsonrpc) | **POST** / | Send a JSON-RPC call to a localhost neblio-Qt or nebliod node
*NEBLNTP1Api* | [**broadcastTx**](docs/NEBLNTP1Api.md#broadcasttx) | **POST** /ntp1/broadcast | Broadcasts a signed raw transaction to the network
*NEBLNTP1Api* | [**burnToken**](docs/NEBLNTP1Api.md#burntoken) | **POST** /ntp1/burntoken | Builds a transaction that burns an NTP1 Token
*NEBLNTP1Api* | [**getAddressInfo**](docs/NEBLNTP1Api.md#getaddressinfo) | **GET** /ntp1/addressinfo/{address} | Information On a Neblio Address
*NEBLNTP1Api* | [**getTokenHolders**](docs/NEBLNTP1Api.md#gettokenholders) | **GET** /ntp1/stakeholders/{tokenid} | Get Addresses Holding a Token
*NEBLNTP1Api* | [**getTokenId**](docs/NEBLNTP1Api.md#gettokenid) | **GET** /ntp1/tokenid/{tokensymbol} | Returns the tokenId representing a token
*NEBLNTP1Api* | [**getTokenMetadata**](docs/NEBLNTP1Api.md#gettokenmetadata) | **GET** /ntp1/tokenmetadata/{tokenid} | Get Metadata of Token
*NEBLNTP1Api* | [**getTokenMetadataOfUtxo**](docs/NEBLNTP1Api.md#gettokenmetadataofutxo) | **GET** /ntp1/tokenmetadata/{tokenid}/{utxo} | Get UTXO Metadata of Token
*NEBLNTP1Api* | [**getTransactionInfo**](docs/NEBLNTP1Api.md#gettransactioninfo) | **GET** /ntp1/transactioninfo/{txid} | Information On an NTP1 Transaction
*NEBLNTP1Api* | [**issueToken**](docs/NEBLNTP1Api.md#issuetoken) | **POST** /ntp1/issue | Builds a transaction that issues a new NTP1 Token
*NEBLNTP1Api* | [**sendToken**](docs/NEBLNTP1Api.md#sendtoken) | **POST** /ntp1/sendtoken | Builds a transaction that sends an NTP1 Token
*NEBLTestnetFaucetApi* | [**testnetGetFaucet**](docs/NEBLTestnetFaucetApi.md#testnetgetfaucet) | **GET** /testnet/faucet | Withdraws testnet NEBL to the specified address
*NEBLTestnetInsightApi* | [**testnetGetAddress**](docs/NEBLTestnetInsightApi.md#testnetgetaddress) | **GET** /testnet/ins/addr/{address} | Returns address object
*NEBLTestnetInsightApi* | [**testnetGetAddressBalance**](docs/NEBLTestnetInsightApi.md#testnetgetaddressbalance) | **GET** /testnet/ins/addr/{address}/balance | Returns address balance in sats
*NEBLTestnetInsightApi* | [**testnetGetAddressTotalReceived**](docs/NEBLTestnetInsightApi.md#testnetgetaddresstotalreceived) | **GET** /testnet/ins/addr/{address}/totalReceived | Returns total received by address in sats
*NEBLTestnetInsightApi* | [**testnetGetAddressTotalSent**](docs/NEBLTestnetInsightApi.md#testnetgetaddresstotalsent) | **GET** /testnet/ins/addr/{address}/totalSent | Returns total sent by address in sats
*NEBLTestnetInsightApi* | [**testnetGetAddressUnconfirmedBalance**](docs/NEBLTestnetInsightApi.md#testnetgetaddressunconfirmedbalance) | **GET** /testnet/ins/addr/{address}/unconfirmedBalance | Returns address unconfirmed balance in sats
*NEBLTestnetInsightApi* | [**testnetGetAddressUtxos**](docs/NEBLTestnetInsightApi.md#testnetgetaddressutxos) | **GET** /testnet/ins/addr/{address}/utxo | Returns all UTXOs at a given address
*NEBLTestnetInsightApi* | [**testnetGetBlock**](docs/NEBLTestnetInsightApi.md#testnetgetblock) | **GET** /testnet/ins/block/{blockhash} | Returns information regarding a Neblio block
*NEBLTestnetInsightApi* | [**testnetGetBlockIndex**](docs/NEBLTestnetInsightApi.md#testnetgetblockindex) | **GET** /testnet/ins/block-index/{blockindex} | Returns block hash of block
*NEBLTestnetInsightApi* | [**testnetGetRawTx**](docs/NEBLTestnetInsightApi.md#testnetgetrawtx) | **GET** /testnet/ins/rawtx/{txid} | Returns raw transaction hex
*NEBLTestnetInsightApi* | [**testnetGetStatus**](docs/NEBLTestnetInsightApi.md#testnetgetstatus) | **GET** /testnet/ins/status | Utility API for calling several blockchain node functions
*NEBLTestnetInsightApi* | [**testnetGetSync**](docs/NEBLTestnetInsightApi.md#testnetgetsync) | **GET** /testnet/ins/sync | Get node sync status
*NEBLTestnetInsightApi* | [**testnetGetTx**](docs/NEBLTestnetInsightApi.md#testnetgettx) | **GET** /testnet/ins/tx/{txid} | Returns transaction object
*NEBLTestnetInsightApi* | [**testnetGetTxs**](docs/NEBLTestnetInsightApi.md#testnetgettxs) | **GET** /testnet/ins/txs | Get transactions by block or address
*NEBLTestnetInsightApi* | [**testnetSendTx**](docs/NEBLTestnetInsightApi.md#testnetsendtx) | **POST** /testnet/ins/tx/send | Broadcasts a signed raw transaction to the network (not NTP1 specific)
*NEBLTestnetNTP1Api* | [**testnetBroadcastTx**](docs/NEBLTestnetNTP1Api.md#testnetbroadcasttx) | **POST** /testnet/ntp1/broadcast | Broadcasts a signed raw transaction to the network
*NEBLTestnetNTP1Api* | [**testnetBurnToken**](docs/NEBLTestnetNTP1Api.md#testnetburntoken) | **POST** /testnet/ntp1/burntoken | Builds a transaction that burns an NTP1 Token
*NEBLTestnetNTP1Api* | [**testnetGetAddressInfo**](docs/NEBLTestnetNTP1Api.md#testnetgetaddressinfo) | **GET** /testnet/ntp1/addressinfo/{address} | Information On a Neblio Address
*NEBLTestnetNTP1Api* | [**testnetGetTokenHolders**](docs/NEBLTestnetNTP1Api.md#testnetgettokenholders) | **GET** /testnet/ntp1/stakeholders/{tokenid} | Get Addresses Holding a Token
*NEBLTestnetNTP1Api* | [**testnetGetTokenId**](docs/NEBLTestnetNTP1Api.md#testnetgettokenid) | **GET** /testnet/ntp1/tokenid/{tokensymbol} | Returns the tokenId representing a token
*NEBLTestnetNTP1Api* | [**testnetGetTokenMetadata**](docs/NEBLTestnetNTP1Api.md#testnetgettokenmetadata) | **GET** /testnet/ntp1/tokenmetadata/{tokenid} | Get Metadata of Token
*NEBLTestnetNTP1Api* | [**testnetGetTokenMetadataOfUtxo**](docs/NEBLTestnetNTP1Api.md#testnetgettokenmetadataofutxo) | **GET** /testnet/ntp1/tokenmetadata/{tokenid}/{utxo} | Get UTXO Metadata of Token
*NEBLTestnetNTP1Api* | [**testnetGetTransactionInfo**](docs/NEBLTestnetNTP1Api.md#testnetgettransactioninfo) | **GET** /testnet/ntp1/transactioninfo/{txid} | Information On an NTP1 Transaction
*NEBLTestnetNTP1Api* | [**testnetIssueToken**](docs/NEBLTestnetNTP1Api.md#testnetissuetoken) | **POST** /testnet/ntp1/issue | Builds a transaction that issues a new NTP1 Token
*NEBLTestnetNTP1Api* | [**testnetSendToken**](docs/NEBLTestnetNTP1Api.md#testnetsendtoken) | **POST** /testnet/ntp1/sendtoken | Builds a transaction that sends an NTP1 Token


## Documentation For Models

 - [NEBLBroadcastTxRequest](docs/NEBLBroadcastTxRequest.md)
 - [NEBLBroadcastTxResponse](docs/NEBLBroadcastTxResponse.md)
 - [NEBLBurnTokenRequest](docs/NEBLBurnTokenRequest.md)
 - [NEBLBurnTokenRequestBurn](docs/NEBLBurnTokenRequestBurn.md)
 - [NEBLBurnTokenResponse](docs/NEBLBurnTokenResponse.md)
 - [NEBLError](docs/NEBLError.md)
 - [NEBLGetAddressInfoResponse](docs/NEBLGetAddressInfoResponse.md)
 - [NEBLGetAddressInfoResponseTokens](docs/NEBLGetAddressInfoResponseTokens.md)
 - [NEBLGetAddressInfoResponseUtxos](docs/NEBLGetAddressInfoResponseUtxos.md)
 - [NEBLGetAddressResponse](docs/NEBLGetAddressResponse.md)
 - [NEBLGetBlockIndexResponse](docs/NEBLGetBlockIndexResponse.md)
 - [NEBLGetBlockResponse](docs/NEBLGetBlockResponse.md)
 - [NEBLGetFaucetResponse](docs/NEBLGetFaucetResponse.md)
 - [NEBLGetFaucetResponseData](docs/NEBLGetFaucetResponseData.md)
 - [NEBLGetRawTxResponse](docs/NEBLGetRawTxResponse.md)
 - [NEBLGetSyncResponse](docs/NEBLGetSyncResponse.md)
 - [NEBLGetTokenHoldersResponse](docs/NEBLGetTokenHoldersResponse.md)
 - [NEBLGetTokenHoldersResponseHolders](docs/NEBLGetTokenHoldersResponseHolders.md)
 - [NEBLGetTokenIdResponse](docs/NEBLGetTokenIdResponse.md)
 - [NEBLGetTokenMetadataResponse](docs/NEBLGetTokenMetadataResponse.md)
 - [NEBLGetTokenMetadataResponseMetadataOfIssuence](docs/NEBLGetTokenMetadataResponseMetadataOfIssuence.md)
 - [NEBLGetTokenMetadataResponseMetadataOfIssuenceData](docs/NEBLGetTokenMetadataResponseMetadataOfIssuenceData.md)
 - [NEBLGetTokenMetadataResponseMetadataOfIssuenceDataUserData](docs/NEBLGetTokenMetadataResponseMetadataOfIssuenceDataUserData.md)
 - [NEBLGetTokenMetadataResponseMetadataOfIssuenceDataUserDataMeta](docs/NEBLGetTokenMetadataResponseMetadataOfIssuenceDataUserDataMeta.md)
 - [NEBLGetTokenMetadataResponseMetadataOfUtxo](docs/NEBLGetTokenMetadataResponseMetadataOfUtxo.md)
 - [NEBLGetTokenMetadataResponseMetadataOfUtxoUserData](docs/NEBLGetTokenMetadataResponseMetadataOfUtxoUserData.md)
 - [NEBLGetTransactionInfoResponse](docs/NEBLGetTransactionInfoResponse.md)
 - [NEBLGetTransactionInfoResponsePreviousOutput](docs/NEBLGetTransactionInfoResponsePreviousOutput.md)
 - [NEBLGetTransactionInfoResponseScriptSig](docs/NEBLGetTransactionInfoResponseScriptSig.md)
 - [NEBLGetTransactionInfoResponseTokens](docs/NEBLGetTransactionInfoResponseTokens.md)
 - [NEBLGetTransactionInfoResponseVin](docs/NEBLGetTransactionInfoResponseVin.md)
 - [NEBLGetTransactionInfoResponseVout](docs/NEBLGetTransactionInfoResponseVout.md)
 - [NEBLGetTxResponse](docs/NEBLGetTxResponse.md)
 - [NEBLGetTxResponseVin](docs/NEBLGetTxResponseVin.md)
 - [NEBLGetTxResponseVout](docs/NEBLGetTxResponseVout.md)
 - [NEBLGetTxsResponse](docs/NEBLGetTxsResponse.md)
 - [NEBLIssueTokenRequest](docs/NEBLIssueTokenRequest.md)
 - [NEBLIssueTokenRequestFlags](docs/NEBLIssueTokenRequestFlags.md)
 - [NEBLIssueTokenRequestMetadata](docs/NEBLIssueTokenRequestMetadata.md)
 - [NEBLIssueTokenRequestMetadataEncryptions](docs/NEBLIssueTokenRequestMetadataEncryptions.md)
 - [NEBLIssueTokenRequestMetadataRules](docs/NEBLIssueTokenRequestMetadataRules.md)
 - [NEBLIssueTokenRequestMetadataRulesExpiration](docs/NEBLIssueTokenRequestMetadataRulesExpiration.md)
 - [NEBLIssueTokenRequestMetadataRulesFees](docs/NEBLIssueTokenRequestMetadataRulesFees.md)
 - [NEBLIssueTokenRequestMetadataRulesFeesItems](docs/NEBLIssueTokenRequestMetadataRulesFeesItems.md)
 - [NEBLIssueTokenRequestMetadataRulesHolders](docs/NEBLIssueTokenRequestMetadataRulesHolders.md)
 - [NEBLIssueTokenRequestMetadataUrls](docs/NEBLIssueTokenRequestMetadataUrls.md)
 - [NEBLIssueTokenRequestTransfer](docs/NEBLIssueTokenRequestTransfer.md)
 - [NEBLIssueTokenResponse](docs/NEBLIssueTokenResponse.md)
 - [NEBLRpcRequest](docs/NEBLRpcRequest.md)
 - [NEBLRpcResponse](docs/NEBLRpcResponse.md)
 - [NEBLSendTokenRequest](docs/NEBLSendTokenRequest.md)
 - [NEBLSendTokenRequestTo](docs/NEBLSendTokenRequestTo.md)
 - [NEBLSendTokenResponse](docs/NEBLSendTokenResponse.md)
 - [NEBLSendTxRequest](docs/NEBLSendTxRequest.md)


## Documentation For Authorization


## rpcAuth

- **Type**: HTTP basic authentication


## Author




