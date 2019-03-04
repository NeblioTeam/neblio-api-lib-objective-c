# NEBLTestnetInsightApi

All URIs are relative to *https://ntp1node.nebl.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**testnetGetAddress**](NEBLTestnetInsightApi.md#testnetgetaddress) | **GET** /testnet/ins/addr/{address} | Returns address object
[**testnetGetAddressBalance**](NEBLTestnetInsightApi.md#testnetgetaddressbalance) | **GET** /testnet/ins/addr/{address}/balance | Returns address balance in sats
[**testnetGetAddressTotalReceived**](NEBLTestnetInsightApi.md#testnetgetaddresstotalreceived) | **GET** /testnet/ins/addr/{address}/totalReceived | Returns total received by address in sats
[**testnetGetAddressTotalSent**](NEBLTestnetInsightApi.md#testnetgetaddresstotalsent) | **GET** /testnet/ins/addr/{address}/totalSent | Returns total sent by address in sats
[**testnetGetAddressUnconfirmedBalance**](NEBLTestnetInsightApi.md#testnetgetaddressunconfirmedbalance) | **GET** /testnet/ins/addr/{address}/unconfirmedBalance | Returns address unconfirmed balance in sats
[**testnetGetAddressUtxos**](NEBLTestnetInsightApi.md#testnetgetaddressutxos) | **GET** /testnet/ins/addr/{address}/utxo | Returns all UTXOs at a given address
[**testnetGetBlock**](NEBLTestnetInsightApi.md#testnetgetblock) | **GET** /testnet/ins/block/{blockhash} | Returns information regarding a Neblio block
[**testnetGetBlockIndex**](NEBLTestnetInsightApi.md#testnetgetblockindex) | **GET** /testnet/ins/block-index/{blockindex} | Returns block hash of block
[**testnetGetRawTx**](NEBLTestnetInsightApi.md#testnetgetrawtx) | **GET** /testnet/ins/rawtx/{txid} | Returns raw transaction hex
[**testnetGetStatus**](NEBLTestnetInsightApi.md#testnetgetstatus) | **GET** /testnet/ins/status | Utility API for calling several blockchain node functions
[**testnetGetSync**](NEBLTestnetInsightApi.md#testnetgetsync) | **GET** /testnet/ins/sync | Get node sync status
[**testnetGetTx**](NEBLTestnetInsightApi.md#testnetgettx) | **GET** /testnet/ins/tx/{txid} | Returns transaction object
[**testnetGetTxs**](NEBLTestnetInsightApi.md#testnetgettxs) | **GET** /testnet/ins/txs | Get transactions by block or address
[**testnetSendTx**](NEBLTestnetInsightApi.md#testnetsendtx) | **POST** /testnet/ins/tx/send | Broadcasts a signed raw transaction to the network (not NTP1 specific)


# **testnetGetAddress**
```objc
-(NSURLSessionTask*) testnetGetAddressWithAddress: (NSString*) address
        completionHandler: (void (^)(NEBLGetAddressResponse* output, NSError* error)) handler;
```

Returns address object

Returns NEBL address object containing information on a specific address

### Example 
```objc

NSString* address = @"address_example"; // Address

NEBLTestnetInsightApi*apiInstance = [[NEBLTestnetInsightApi alloc] init];

// Returns address object
[apiInstance testnetGetAddressWithAddress:address
          completionHandler: ^(NEBLGetAddressResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NEBLTestnetInsightApi->testnetGetAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| Address | 

### Return type

[**NEBLGetAddressResponse***](NEBLGetAddressResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetAddressBalance**
```objc
-(NSURLSessionTask*) testnetGetAddressBalanceWithAddress: (NSString*) address
        completionHandler: (void (^)(NSNumber* output, NSError* error)) handler;
```

Returns address balance in sats

Returns NEBL address balance in satoshis

### Example 
```objc

NSString* address = @"address_example"; // Address

NEBLTestnetInsightApi*apiInstance = [[NEBLTestnetInsightApi alloc] init];

// Returns address balance in sats
[apiInstance testnetGetAddressBalanceWithAddress:address
          completionHandler: ^(NSNumber* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NEBLTestnetInsightApi->testnetGetAddressBalance: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| Address | 

### Return type

**NSNumber***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetAddressTotalReceived**
```objc
-(NSURLSessionTask*) testnetGetAddressTotalReceivedWithAddress: (NSString*) address
        completionHandler: (void (^)(NSNumber* output, NSError* error)) handler;
```

Returns total received by address in sats

Returns total NEBL received by address in satoshis

### Example 
```objc

NSString* address = @"address_example"; // Address

NEBLTestnetInsightApi*apiInstance = [[NEBLTestnetInsightApi alloc] init];

// Returns total received by address in sats
[apiInstance testnetGetAddressTotalReceivedWithAddress:address
          completionHandler: ^(NSNumber* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NEBLTestnetInsightApi->testnetGetAddressTotalReceived: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| Address | 

### Return type

**NSNumber***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetAddressTotalSent**
```objc
-(NSURLSessionTask*) testnetGetAddressTotalSentWithAddress: (NSString*) address
        completionHandler: (void (^)(NSNumber* output, NSError* error)) handler;
```

Returns total sent by address in sats

Returns total NEBL sent by address in satoshis

### Example 
```objc

NSString* address = @"address_example"; // Address

NEBLTestnetInsightApi*apiInstance = [[NEBLTestnetInsightApi alloc] init];

// Returns total sent by address in sats
[apiInstance testnetGetAddressTotalSentWithAddress:address
          completionHandler: ^(NSNumber* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NEBLTestnetInsightApi->testnetGetAddressTotalSent: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| Address | 

### Return type

**NSNumber***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetAddressUnconfirmedBalance**
```objc
-(NSURLSessionTask*) testnetGetAddressUnconfirmedBalanceWithAddress: (NSString*) address
        completionHandler: (void (^)(NSNumber* output, NSError* error)) handler;
```

Returns address unconfirmed balance in sats

Returns NEBL address unconfirmed balance in satoshis

### Example 
```objc

NSString* address = @"address_example"; // Address

NEBLTestnetInsightApi*apiInstance = [[NEBLTestnetInsightApi alloc] init];

// Returns address unconfirmed balance in sats
[apiInstance testnetGetAddressUnconfirmedBalanceWithAddress:address
          completionHandler: ^(NSNumber* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NEBLTestnetInsightApi->testnetGetAddressUnconfirmedBalance: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| Address | 

### Return type

**NSNumber***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetAddressUtxos**
```objc
-(NSURLSessionTask*) testnetGetAddressUtxosWithAddress: (NSString*) address
        completionHandler: (void (^)(NSArray<NSObject*>* output, NSError* error)) handler;
```

Returns all UTXOs at a given address

Returns information on each Unspent Transaction Output contained at an address

### Example 
```objc

NSString* address = @"address_example"; // Address

NEBLTestnetInsightApi*apiInstance = [[NEBLTestnetInsightApi alloc] init];

// Returns all UTXOs at a given address
[apiInstance testnetGetAddressUtxosWithAddress:address
          completionHandler: ^(NSArray<NSObject*>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NEBLTestnetInsightApi->testnetGetAddressUtxos: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| Address | 

### Return type

**NSArray<NSObject*>***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetBlock**
```objc
-(NSURLSessionTask*) testnetGetBlockWithBlockhash: (NSString*) blockhash
        completionHandler: (void (^)(NEBLGetBlockResponse* output, NSError* error)) handler;
```

Returns information regarding a Neblio block

Returns blockchain data for a given block based upon the block hash

### Example 
```objc

NSString* blockhash = @"blockhash_example"; // Block Hash

NEBLTestnetInsightApi*apiInstance = [[NEBLTestnetInsightApi alloc] init];

// Returns information regarding a Neblio block
[apiInstance testnetGetBlockWithBlockhash:blockhash
          completionHandler: ^(NEBLGetBlockResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NEBLTestnetInsightApi->testnetGetBlock: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blockhash** | **NSString***| Block Hash | 

### Return type

[**NEBLGetBlockResponse***](NEBLGetBlockResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetBlockIndex**
```objc
-(NSURLSessionTask*) testnetGetBlockIndexWithBlockindex: (NSNumber*) blockindex
        completionHandler: (void (^)(NEBLGetBlockIndexResponse* output, NSError* error)) handler;
```

Returns block hash of block

Returns the block hash of a block at a given block index

### Example 
```objc

NSNumber* blockindex = @56; // Block Index

NEBLTestnetInsightApi*apiInstance = [[NEBLTestnetInsightApi alloc] init];

// Returns block hash of block
[apiInstance testnetGetBlockIndexWithBlockindex:blockindex
          completionHandler: ^(NEBLGetBlockIndexResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NEBLTestnetInsightApi->testnetGetBlockIndex: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blockindex** | **NSNumber***| Block Index | 

### Return type

[**NEBLGetBlockIndexResponse***](NEBLGetBlockIndexResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetRawTx**
```objc
-(NSURLSessionTask*) testnetGetRawTxWithTxid: (NSString*) txid
        completionHandler: (void (^)(NEBLGetRawTxResponse* output, NSError* error)) handler;
```

Returns raw transaction hex

Returns raw transaction hex representing a NEBL transaction

### Example 
```objc

NSString* txid = @"txid_example"; // Transaction ID

NEBLTestnetInsightApi*apiInstance = [[NEBLTestnetInsightApi alloc] init];

// Returns raw transaction hex
[apiInstance testnetGetRawTxWithTxid:txid
          completionHandler: ^(NEBLGetRawTxResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NEBLTestnetInsightApi->testnetGetRawTx: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **txid** | **NSString***| Transaction ID | 

### Return type

[**NEBLGetRawTxResponse***](NEBLGetRawTxResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetStatus**
```objc
-(NSURLSessionTask*) testnetGetStatusWithQ: (NSString*) q
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Utility API for calling several blockchain node functions

Utility API for calling several blockchain node functions - getInfo, getDifficulty, getBestBlockHash, getLastBlockHash

### Example 
```objc

NSString* q = @"q_example"; // Function to call, getInfo, getDifficulty, getBestBlockHash, or getLastBlockHash (optional)

NEBLTestnetInsightApi*apiInstance = [[NEBLTestnetInsightApi alloc] init];

// Utility API for calling several blockchain node functions
[apiInstance testnetGetStatusWithQ:q
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NEBLTestnetInsightApi->testnetGetStatus: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **NSString***| Function to call, getInfo, getDifficulty, getBestBlockHash, or getLastBlockHash | [optional] 

### Return type

**NSObject***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetSync**
```objc
-(NSURLSessionTask*) testnetGetSyncWithCompletionHandler: 
        (void (^)(NEBLGetSyncResponse* output, NSError* error)) handler;
```

Get node sync status

Returns information on the node's sync progress

### Example 
```objc


NEBLTestnetInsightApi*apiInstance = [[NEBLTestnetInsightApi alloc] init];

// Get node sync status
[apiInstance testnetGetSyncWithCompletionHandler: 
          ^(NEBLGetSyncResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NEBLTestnetInsightApi->testnetGetSync: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NEBLGetSyncResponse***](NEBLGetSyncResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetTx**
```objc
-(NSURLSessionTask*) testnetGetTxWithTxid: (NSString*) txid
        completionHandler: (void (^)(NEBLGetTxResponse* output, NSError* error)) handler;
```

Returns transaction object

Returns NEBL transaction object representing a NEBL transaction

### Example 
```objc

NSString* txid = @"txid_example"; // Transaction ID

NEBLTestnetInsightApi*apiInstance = [[NEBLTestnetInsightApi alloc] init];

// Returns transaction object
[apiInstance testnetGetTxWithTxid:txid
          completionHandler: ^(NEBLGetTxResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NEBLTestnetInsightApi->testnetGetTx: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **txid** | **NSString***| Transaction ID | 

### Return type

[**NEBLGetTxResponse***](NEBLGetTxResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetTxs**
```objc
-(NSURLSessionTask*) testnetGetTxsWithAddress: (NSString*) address
    block: (NSString*) block
    pageNum: (NSNumber*) pageNum
        completionHandler: (void (^)(NEBLGetTxsResponse* output, NSError* error)) handler;
```

Get transactions by block or address

Returns all transactions by block or address

### Example 
```objc

NSString* address = @"address_example"; // Address (optional)
NSString* block = @"block_example"; // Block Hash (optional)
NSNumber* pageNum = @56; // Page number to display (optional)

NEBLTestnetInsightApi*apiInstance = [[NEBLTestnetInsightApi alloc] init];

// Get transactions by block or address
[apiInstance testnetGetTxsWithAddress:address
              block:block
              pageNum:pageNum
          completionHandler: ^(NEBLGetTxsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NEBLTestnetInsightApi->testnetGetTxs: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| Address | [optional] 
 **block** | **NSString***| Block Hash | [optional] 
 **pageNum** | **NSNumber***| Page number to display | [optional] 

### Return type

[**NEBLGetTxsResponse***](NEBLGetTxsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetSendTx**
```objc
-(NSURLSessionTask*) testnetSendTxWithSendTxRequest: (NEBLSendTxRequest*) sendTxRequest
        completionHandler: (void (^)(NEBLBroadcastTxResponse* output, NSError* error)) handler;
```

Broadcasts a signed raw transaction to the network (not NTP1 specific)

Broadcasts a signed raw transaction to the network. If successful returns the txid of the broadcast trasnaction. 

### Example 
```objc

NEBLSendTxRequest* sendTxRequest = [[NEBLSendTxRequest alloc] init]; // Object representing a transaction to broadcast

NEBLTestnetInsightApi*apiInstance = [[NEBLTestnetInsightApi alloc] init];

// Broadcasts a signed raw transaction to the network (not NTP1 specific)
[apiInstance testnetSendTxWithSendTxRequest:sendTxRequest
          completionHandler: ^(NEBLBroadcastTxResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NEBLTestnetInsightApi->testnetSendTx: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sendTxRequest** | [**NEBLSendTxRequest***](NEBLSendTxRequest.md)| Object representing a transaction to broadcast | 

### Return type

[**NEBLBroadcastTxResponse***](NEBLBroadcastTxResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

