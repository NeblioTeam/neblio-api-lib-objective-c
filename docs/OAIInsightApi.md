# OAIInsightApi

All URIs are relative to *https://ntp1node.nebl.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAddress**](OAIInsightApi.md#getaddress) | **GET** /ins/addr/{address} | Returns address object
[**getAddressBalance**](OAIInsightApi.md#getaddressbalance) | **GET** /ins/addr/{address}/balance | Returns address balance in sats
[**getAddressTotalReceived**](OAIInsightApi.md#getaddresstotalreceived) | **GET** /ins/addr/{address}/totalReceived | Returns total received by address in sats
[**getAddressTotalSent**](OAIInsightApi.md#getaddresstotalsent) | **GET** /ins/addr/{address}/totalSent | Returns total sent by address in sats
[**getAddressUnconfirmedBalance**](OAIInsightApi.md#getaddressunconfirmedbalance) | **GET** /ins/addr/{address}/unconfirmedBalance | Returns address unconfirmed balance in sats
[**getAddressUtxos**](OAIInsightApi.md#getaddressutxos) | **GET** /ins/addr/{address}/utxo | Returns all UTXOs at a given address
[**getBlock**](OAIInsightApi.md#getblock) | **GET** /ins/block/{blockhash} | Returns information regarding a Neblio block
[**getBlockIndex**](OAIInsightApi.md#getblockindex) | **GET** /ins/block-index/{blockindex} | Returns block hash of block
[**getRawTx**](OAIInsightApi.md#getrawtx) | **GET** /ins/rawtx/{txid} | Returns raw transaction hex
[**getStatus**](OAIInsightApi.md#getstatus) | **GET** /ins/status | Utility API for calling several blockchain node functions
[**getSync**](OAIInsightApi.md#getsync) | **GET** /ins/sync | Get node sync status
[**getTx**](OAIInsightApi.md#gettx) | **GET** /ins/tx/{txid} | Returns transaction object
[**getTxs**](OAIInsightApi.md#gettxs) | **GET** /ins/txs | Get transactions by block or address
[**sendTx**](OAIInsightApi.md#sendtx) | **POST** /ins/tx/send | Broadcasts a signed raw transaction to the network (not NTP1 specific)


# **getAddress**
```objc
-(NSURLSessionTask*) getAddressWithAddress: (NSString*) address
        completionHandler: (void (^)(OAIGetAddressResponse* output, NSError* error)) handler;
```

Returns address object

Returns NEBL address object containing information on a specific address

### Example 
```objc

NSString* address = @"address_example"; // Address

OAIInsightApi*apiInstance = [[OAIInsightApi alloc] init];

// Returns address object
[apiInstance getAddressWithAddress:address
          completionHandler: ^(OAIGetAddressResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInsightApi->getAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| Address | 

### Return type

[**OAIGetAddressResponse***](OAIGetAddressResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAddressBalance**
```objc
-(NSURLSessionTask*) getAddressBalanceWithAddress: (NSString*) address
        completionHandler: (void (^)(NSNumber* output, NSError* error)) handler;
```

Returns address balance in sats

Returns NEBL address balance in satoshis

### Example 
```objc

NSString* address = @"address_example"; // Address

OAIInsightApi*apiInstance = [[OAIInsightApi alloc] init];

// Returns address balance in sats
[apiInstance getAddressBalanceWithAddress:address
          completionHandler: ^(NSNumber* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInsightApi->getAddressBalance: %@", error);
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

# **getAddressTotalReceived**
```objc
-(NSURLSessionTask*) getAddressTotalReceivedWithAddress: (NSString*) address
        completionHandler: (void (^)(NSNumber* output, NSError* error)) handler;
```

Returns total received by address in sats

Returns total NEBL received by address in satoshis

### Example 
```objc

NSString* address = @"address_example"; // Address

OAIInsightApi*apiInstance = [[OAIInsightApi alloc] init];

// Returns total received by address in sats
[apiInstance getAddressTotalReceivedWithAddress:address
          completionHandler: ^(NSNumber* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInsightApi->getAddressTotalReceived: %@", error);
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

# **getAddressTotalSent**
```objc
-(NSURLSessionTask*) getAddressTotalSentWithAddress: (NSString*) address
        completionHandler: (void (^)(NSNumber* output, NSError* error)) handler;
```

Returns total sent by address in sats

Returns total NEBL sent by address in satoshis

### Example 
```objc

NSString* address = @"address_example"; // Address

OAIInsightApi*apiInstance = [[OAIInsightApi alloc] init];

// Returns total sent by address in sats
[apiInstance getAddressTotalSentWithAddress:address
          completionHandler: ^(NSNumber* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInsightApi->getAddressTotalSent: %@", error);
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

# **getAddressUnconfirmedBalance**
```objc
-(NSURLSessionTask*) getAddressUnconfirmedBalanceWithAddress: (NSString*) address
        completionHandler: (void (^)(NSNumber* output, NSError* error)) handler;
```

Returns address unconfirmed balance in sats

Returns NEBL address unconfirmed balance in satoshis

### Example 
```objc

NSString* address = @"address_example"; // Address

OAIInsightApi*apiInstance = [[OAIInsightApi alloc] init];

// Returns address unconfirmed balance in sats
[apiInstance getAddressUnconfirmedBalanceWithAddress:address
          completionHandler: ^(NSNumber* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInsightApi->getAddressUnconfirmedBalance: %@", error);
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

# **getAddressUtxos**
```objc
-(NSURLSessionTask*) getAddressUtxosWithAddress: (NSString*) address
        completionHandler: (void (^)(NSArray<NSObject*>* output, NSError* error)) handler;
```

Returns all UTXOs at a given address

Returns information on each Unspent Transaction Output contained at an address

### Example 
```objc

NSString* address = @"address_example"; // Address

OAIInsightApi*apiInstance = [[OAIInsightApi alloc] init];

// Returns all UTXOs at a given address
[apiInstance getAddressUtxosWithAddress:address
          completionHandler: ^(NSArray<NSObject*>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInsightApi->getAddressUtxos: %@", error);
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

# **getBlock**
```objc
-(NSURLSessionTask*) getBlockWithBlockhash: (NSString*) blockhash
        completionHandler: (void (^)(OAIGetBlockResponse* output, NSError* error)) handler;
```

Returns information regarding a Neblio block

Returns blockchain data for a given block based upon the block hash

### Example 
```objc

NSString* blockhash = @"blockhash_example"; // Block Hash

OAIInsightApi*apiInstance = [[OAIInsightApi alloc] init];

// Returns information regarding a Neblio block
[apiInstance getBlockWithBlockhash:blockhash
          completionHandler: ^(OAIGetBlockResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInsightApi->getBlock: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blockhash** | **NSString***| Block Hash | 

### Return type

[**OAIGetBlockResponse***](OAIGetBlockResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBlockIndex**
```objc
-(NSURLSessionTask*) getBlockIndexWithBlockindex: (NSNumber*) blockindex
        completionHandler: (void (^)(OAIGetBlockIndexResponse* output, NSError* error)) handler;
```

Returns block hash of block

Returns the block hash of a block at a given block index

### Example 
```objc

NSNumber* blockindex = @56; // Block Index

OAIInsightApi*apiInstance = [[OAIInsightApi alloc] init];

// Returns block hash of block
[apiInstance getBlockIndexWithBlockindex:blockindex
          completionHandler: ^(OAIGetBlockIndexResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInsightApi->getBlockIndex: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blockindex** | **NSNumber***| Block Index | 

### Return type

[**OAIGetBlockIndexResponse***](OAIGetBlockIndexResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRawTx**
```objc
-(NSURLSessionTask*) getRawTxWithTxid: (NSString*) txid
        completionHandler: (void (^)(OAIGetRawTxResponse* output, NSError* error)) handler;
```

Returns raw transaction hex

Returns raw transaction hex representing a NEBL transaction

### Example 
```objc

NSString* txid = @"txid_example"; // Transaction ID

OAIInsightApi*apiInstance = [[OAIInsightApi alloc] init];

// Returns raw transaction hex
[apiInstance getRawTxWithTxid:txid
          completionHandler: ^(OAIGetRawTxResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInsightApi->getRawTx: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **txid** | **NSString***| Transaction ID | 

### Return type

[**OAIGetRawTxResponse***](OAIGetRawTxResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStatus**
```objc
-(NSURLSessionTask*) getStatusWithQ: (NSString*) q
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Utility API for calling several blockchain node functions

Utility API for calling several blockchain node functions - getInfo, getDifficulty, getBestBlockHash, getLastBlockHash

### Example 
```objc

NSString* q = @"q_example"; // Function to call, getInfo, getDifficulty, getBestBlockHash, or getLastBlockHash (optional)

OAIInsightApi*apiInstance = [[OAIInsightApi alloc] init];

// Utility API for calling several blockchain node functions
[apiInstance getStatusWithQ:q
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInsightApi->getStatus: %@", error);
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

# **getSync**
```objc
-(NSURLSessionTask*) getSyncWithCompletionHandler: 
        (void (^)(OAIGetSyncResponse* output, NSError* error)) handler;
```

Get node sync status

Returns information on the node's sync progress

### Example 
```objc


OAIInsightApi*apiInstance = [[OAIInsightApi alloc] init];

// Get node sync status
[apiInstance getSyncWithCompletionHandler: 
          ^(OAIGetSyncResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInsightApi->getSync: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OAIGetSyncResponse***](OAIGetSyncResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTx**
```objc
-(NSURLSessionTask*) getTxWithTxid: (NSString*) txid
        completionHandler: (void (^)(OAIGetTxResponse* output, NSError* error)) handler;
```

Returns transaction object

Returns NEBL transaction object representing a NEBL transaction

### Example 
```objc

NSString* txid = @"txid_example"; // Transaction ID

OAIInsightApi*apiInstance = [[OAIInsightApi alloc] init];

// Returns transaction object
[apiInstance getTxWithTxid:txid
          completionHandler: ^(OAIGetTxResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInsightApi->getTx: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **txid** | **NSString***| Transaction ID | 

### Return type

[**OAIGetTxResponse***](OAIGetTxResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTxs**
```objc
-(NSURLSessionTask*) getTxsWithAddress: (NSString*) address
    block: (NSString*) block
    pageNum: (NSNumber*) pageNum
        completionHandler: (void (^)(OAIGetTxsResponse* output, NSError* error)) handler;
```

Get transactions by block or address

Returns all transactions by block or address

### Example 
```objc

NSString* address = @"address_example"; // Address (optional)
NSString* block = @"block_example"; // Block Hash (optional)
NSNumber* pageNum = @56; // Page number to display (optional)

OAIInsightApi*apiInstance = [[OAIInsightApi alloc] init];

// Get transactions by block or address
[apiInstance getTxsWithAddress:address
              block:block
              pageNum:pageNum
          completionHandler: ^(OAIGetTxsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInsightApi->getTxs: %@", error);
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

[**OAIGetTxsResponse***](OAIGetTxsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendTx**
```objc
-(NSURLSessionTask*) sendTxWithSendTxRequest: (OAISendTxRequest*) sendTxRequest
        completionHandler: (void (^)(OAIBroadcastTxResponse* output, NSError* error)) handler;
```

Broadcasts a signed raw transaction to the network (not NTP1 specific)

Broadcasts a signed raw transaction to the network. If successful returns the txid of the broadcast trasnaction. 

### Example 
```objc

OAISendTxRequest* sendTxRequest = [[OAISendTxRequest alloc] init]; // Object representing a transaction to broadcast

OAIInsightApi*apiInstance = [[OAIInsightApi alloc] init];

// Broadcasts a signed raw transaction to the network (not NTP1 specific)
[apiInstance sendTxWithSendTxRequest:sendTxRequest
          completionHandler: ^(OAIBroadcastTxResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIInsightApi->sendTx: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sendTxRequest** | [**OAISendTxRequest***](OAISendTxRequest.md)| Object representing a transaction to broadcast | 

### Return type

[**OAIBroadcastTxResponse***](OAIBroadcastTxResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

