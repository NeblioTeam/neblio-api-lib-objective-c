# SWGTestnetInsightApi

All URIs are relative to *https://ntp1node.nebl.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**testnetGetAddress**](SWGTestnetInsightApi.md#testnetgetaddress) | **GET** /testnet/ins/addr/{address} | Returns address object
[**testnetGetAddressBalance**](SWGTestnetInsightApi.md#testnetgetaddressbalance) | **GET** /testnet/ins/addr/{address}/balance | Returns address balance in sats
[**testnetGetAddressTotalReceived**](SWGTestnetInsightApi.md#testnetgetaddresstotalreceived) | **GET** /testnet/ins/addr/{address}/totalReceived | Returns total received by address in sats
[**testnetGetAddressTotalSent**](SWGTestnetInsightApi.md#testnetgetaddresstotalsent) | **GET** /testnet/ins/addr/{address}/totalSent | Returns total sent by address in sats
[**testnetGetAddressUnconfirmedBalance**](SWGTestnetInsightApi.md#testnetgetaddressunconfirmedbalance) | **GET** /testnet/ins/addr/{address}/unconfirmedBalance | Returns address unconfirmed balance in sats
[**testnetGetAddressUtxos**](SWGTestnetInsightApi.md#testnetgetaddressutxos) | **GET** /testnet/ins/addr/{address}/utxo | Returns all UTXOs at a given address
[**testnetGetBlock**](SWGTestnetInsightApi.md#testnetgetblock) | **GET** /testnet/ins/block/{blockhash} | Returns information regarding a Neblio block
[**testnetGetBlockIndex**](SWGTestnetInsightApi.md#testnetgetblockindex) | **GET** /testnet/ins/block-index/{blockindex} | Returns block hash of block
[**testnetGetRawTx**](SWGTestnetInsightApi.md#testnetgetrawtx) | **GET** /testnet/ins/rawtx/{txid} | Returns raw transaction hex
[**testnetGetStatus**](SWGTestnetInsightApi.md#testnetgetstatus) | **GET** /testnet/ins/status | Utility API for calling several blockchain node functions
[**testnetGetSync**](SWGTestnetInsightApi.md#testnetgetsync) | **GET** /testnet/ins/sync | Get node sync status
[**testnetGetTx**](SWGTestnetInsightApi.md#testnetgettx) | **GET** /testnet/ins/tx/{txid} | Returns transaction object
[**testnetGetTxs**](SWGTestnetInsightApi.md#testnetgettxs) | **GET** /testnet/ins/txs | Get transactions by block or address
[**testnetSendTx**](SWGTestnetInsightApi.md#testnetsendtx) | **POST** /testnet/ins/tx/send | Broadcasts a signed raw transaction to the network (not NTP1 specific)


# **testnetGetAddress**
```objc
-(NSURLSessionTask*) testnetGetAddressWithAddress: (NSString*) address
        completionHandler: (void (^)(SWGGetAddressResponse* output, NSError* error)) handler;
```

Returns address object

Returns NEBL address object containing information on a specific address

### Example 
```objc

NSString* address = @"address_example"; // Address

SWGTestnetInsightApi*apiInstance = [[SWGTestnetInsightApi alloc] init];

// Returns address object
[apiInstance testnetGetAddressWithAddress:address
          completionHandler: ^(SWGGetAddressResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTestnetInsightApi->testnetGetAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| Address | 

### Return type

[**SWGGetAddressResponse***](SWGGetAddressResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetAddressBalance**
```objc
-(NSURLSessionTask*) testnetGetAddressBalanceWithAddress: (NSString*) address
        completionHandler: (void (^)(SWGGetAddressBalanceResponse* output, NSError* error)) handler;
```

Returns address balance in sats

Returns NEBL address balance in satoshis

### Example 
```objc

NSString* address = @"address_example"; // Address

SWGTestnetInsightApi*apiInstance = [[SWGTestnetInsightApi alloc] init];

// Returns address balance in sats
[apiInstance testnetGetAddressBalanceWithAddress:address
          completionHandler: ^(SWGGetAddressBalanceResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTestnetInsightApi->testnetGetAddressBalance: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| Address | 

### Return type

[**SWGGetAddressBalanceResponse***](SWGGetAddressBalanceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetAddressTotalReceived**
```objc
-(NSURLSessionTask*) testnetGetAddressTotalReceivedWithAddress: (NSString*) address
        completionHandler: (void (^)(SWGGetAddressTotalReceivedResponse* output, NSError* error)) handler;
```

Returns total received by address in sats

Returns total NEBL received by address in satoshis

### Example 
```objc

NSString* address = @"address_example"; // Address

SWGTestnetInsightApi*apiInstance = [[SWGTestnetInsightApi alloc] init];

// Returns total received by address in sats
[apiInstance testnetGetAddressTotalReceivedWithAddress:address
          completionHandler: ^(SWGGetAddressTotalReceivedResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTestnetInsightApi->testnetGetAddressTotalReceived: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| Address | 

### Return type

[**SWGGetAddressTotalReceivedResponse***](SWGGetAddressTotalReceivedResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetAddressTotalSent**
```objc
-(NSURLSessionTask*) testnetGetAddressTotalSentWithAddress: (NSString*) address
        completionHandler: (void (^)(SWGGetAddressTotalSentResponse* output, NSError* error)) handler;
```

Returns total sent by address in sats

Returns total NEBL sent by address in satoshis

### Example 
```objc

NSString* address = @"address_example"; // Address

SWGTestnetInsightApi*apiInstance = [[SWGTestnetInsightApi alloc] init];

// Returns total sent by address in sats
[apiInstance testnetGetAddressTotalSentWithAddress:address
          completionHandler: ^(SWGGetAddressTotalSentResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTestnetInsightApi->testnetGetAddressTotalSent: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| Address | 

### Return type

[**SWGGetAddressTotalSentResponse***](SWGGetAddressTotalSentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetAddressUnconfirmedBalance**
```objc
-(NSURLSessionTask*) testnetGetAddressUnconfirmedBalanceWithAddress: (NSString*) address
        completionHandler: (void (^)(SWGGetAddressUnconfirmedBalanceResponse* output, NSError* error)) handler;
```

Returns address unconfirmed balance in sats

Returns NEBL address unconfirmed balance in satoshis

### Example 
```objc

NSString* address = @"address_example"; // Address

SWGTestnetInsightApi*apiInstance = [[SWGTestnetInsightApi alloc] init];

// Returns address unconfirmed balance in sats
[apiInstance testnetGetAddressUnconfirmedBalanceWithAddress:address
          completionHandler: ^(SWGGetAddressUnconfirmedBalanceResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTestnetInsightApi->testnetGetAddressUnconfirmedBalance: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| Address | 

### Return type

[**SWGGetAddressUnconfirmedBalanceResponse***](SWGGetAddressUnconfirmedBalanceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetAddressUtxos**
```objc
-(NSURLSessionTask*) testnetGetAddressUtxosWithAddress: (NSString*) address
        completionHandler: (void (^)(SWGGetAddressUtxosResponse* output, NSError* error)) handler;
```

Returns all UTXOs at a given address

Returns information on each Unspent Transaction Output contained at an address

### Example 
```objc

NSString* address = @"address_example"; // Address

SWGTestnetInsightApi*apiInstance = [[SWGTestnetInsightApi alloc] init];

// Returns all UTXOs at a given address
[apiInstance testnetGetAddressUtxosWithAddress:address
          completionHandler: ^(SWGGetAddressUtxosResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTestnetInsightApi->testnetGetAddressUtxos: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| Address | 

### Return type

[**SWGGetAddressUtxosResponse***](SWGGetAddressUtxosResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetBlock**
```objc
-(NSURLSessionTask*) testnetGetBlockWithBlockhash: (NSString*) blockhash
        completionHandler: (void (^)(SWGGetBlockResponse* output, NSError* error)) handler;
```

Returns information regarding a Neblio block

Returns blockchain data for a given block based upon the block hash

### Example 
```objc

NSString* blockhash = @"blockhash_example"; // Block Hash

SWGTestnetInsightApi*apiInstance = [[SWGTestnetInsightApi alloc] init];

// Returns information regarding a Neblio block
[apiInstance testnetGetBlockWithBlockhash:blockhash
          completionHandler: ^(SWGGetBlockResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTestnetInsightApi->testnetGetBlock: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blockhash** | **NSString***| Block Hash | 

### Return type

[**SWGGetBlockResponse***](SWGGetBlockResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetBlockIndex**
```objc
-(NSURLSessionTask*) testnetGetBlockIndexWithBlockindex: (NSNumber*) blockindex
        completionHandler: (void (^)(SWGGetBlockIndexResponse* output, NSError* error)) handler;
```

Returns block hash of block

Returns the block hash of a block at a given block index

### Example 
```objc

NSNumber* blockindex = @8.14; // Block Index

SWGTestnetInsightApi*apiInstance = [[SWGTestnetInsightApi alloc] init];

// Returns block hash of block
[apiInstance testnetGetBlockIndexWithBlockindex:blockindex
          completionHandler: ^(SWGGetBlockIndexResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTestnetInsightApi->testnetGetBlockIndex: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blockindex** | **NSNumber***| Block Index | 

### Return type

[**SWGGetBlockIndexResponse***](SWGGetBlockIndexResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetRawTx**
```objc
-(NSURLSessionTask*) testnetGetRawTxWithTxid: (NSString*) txid
        completionHandler: (void (^)(SWGGetRawTxResponse* output, NSError* error)) handler;
```

Returns raw transaction hex

Returns raw transaction hex representing a NEBL transaction

### Example 
```objc

NSString* txid = @"txid_example"; // Transaction ID

SWGTestnetInsightApi*apiInstance = [[SWGTestnetInsightApi alloc] init];

// Returns raw transaction hex
[apiInstance testnetGetRawTxWithTxid:txid
          completionHandler: ^(SWGGetRawTxResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTestnetInsightApi->testnetGetRawTx: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **txid** | **NSString***| Transaction ID | 

### Return type

[**SWGGetRawTxResponse***](SWGGetRawTxResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetStatus**
```objc
-(NSURLSessionTask*) testnetGetStatusWithQ: (NSString*) q
        completionHandler: (void (^)(SWGGetStatusResponse* output, NSError* error)) handler;
```

Utility API for calling several blockchain node functions

tility API for calling several blockchain node functions - getInfo, getDifficulty, getBestBlockHash, getLastBlockHash

### Example 
```objc

NSString* q = @"q_example"; // Function to call, getInfo, getDifficulty, getBestBlockHash, or getLastBlockHash (optional)

SWGTestnetInsightApi*apiInstance = [[SWGTestnetInsightApi alloc] init];

// Utility API for calling several blockchain node functions
[apiInstance testnetGetStatusWithQ:q
          completionHandler: ^(SWGGetStatusResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTestnetInsightApi->testnetGetStatus: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **NSString***| Function to call, getInfo, getDifficulty, getBestBlockHash, or getLastBlockHash | [optional] 

### Return type

[**SWGGetStatusResponse***](SWGGetStatusResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetSync**
```objc
-(NSURLSessionTask*) testnetGetSyncWithCompletionHandler: 
        (void (^)(SWGGetSyncResponse* output, NSError* error)) handler;
```

Get node sync status

Returns information on the node's sync progress

### Example 
```objc


SWGTestnetInsightApi*apiInstance = [[SWGTestnetInsightApi alloc] init];

// Get node sync status
[apiInstance testnetGetSyncWithCompletionHandler: 
          ^(SWGGetSyncResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTestnetInsightApi->testnetGetSync: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SWGGetSyncResponse***](SWGGetSyncResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetTx**
```objc
-(NSURLSessionTask*) testnetGetTxWithTxid: (NSString*) txid
        completionHandler: (void (^)(SWGGetTxResponse* output, NSError* error)) handler;
```

Returns transaction object

Returns NEBL transaction object representing a NEBL transaction

### Example 
```objc

NSString* txid = @"txid_example"; // Transaction ID

SWGTestnetInsightApi*apiInstance = [[SWGTestnetInsightApi alloc] init];

// Returns transaction object
[apiInstance testnetGetTxWithTxid:txid
          completionHandler: ^(SWGGetTxResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTestnetInsightApi->testnetGetTx: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **txid** | **NSString***| Transaction ID | 

### Return type

[**SWGGetTxResponse***](SWGGetTxResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetTxs**
```objc
-(NSURLSessionTask*) testnetGetTxsWithAddress: (NSString*) address
    block: (NSString*) block
    page: (NSNumber*) page
        completionHandler: (void (^)(SWGGetTxsResponse* output, NSError* error)) handler;
```

Get transactions by block or address

Returns all transactions by block or address

### Example 
```objc

NSString* address = @"address_example"; // Address (optional)
NSString* block = @"block_example"; // Block Hash (optional)
NSNumber* page = @8.14; // Page number to display (optional)

SWGTestnetInsightApi*apiInstance = [[SWGTestnetInsightApi alloc] init];

// Get transactions by block or address
[apiInstance testnetGetTxsWithAddress:address
              block:block
              page:page
          completionHandler: ^(SWGGetTxsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTestnetInsightApi->testnetGetTxs: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| Address | [optional] 
 **block** | **NSString***| Block Hash | [optional] 
 **page** | **NSNumber***| Page number to display | [optional] 

### Return type

[**SWGGetTxsResponse***](SWGGetTxsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetSendTx**
```objc
-(NSURLSessionTask*) testnetSendTxWithBody: (SWGSendTxRequest*) body
        completionHandler: (void (^)(SWGBroadcastTxResponse* output, NSError* error)) handler;
```

Broadcasts a signed raw transaction to the network (not NTP1 specific)

Broadcasts a signed raw transaction to the network. If successful returns the txid of the broadcast trasnaction. 

### Example 
```objc

SWGSendTxRequest* body = [[SWGSendTxRequest alloc] init]; // Object representing a transaction to broadcast

SWGTestnetInsightApi*apiInstance = [[SWGTestnetInsightApi alloc] init];

// Broadcasts a signed raw transaction to the network (not NTP1 specific)
[apiInstance testnetSendTxWithBody:body
          completionHandler: ^(SWGBroadcastTxResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTestnetInsightApi->testnetSendTx: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SWGSendTxRequest***](SWGSendTxRequest.md)| Object representing a transaction to broadcast | 

### Return type

[**SWGBroadcastTxResponse***](SWGBroadcastTxResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

