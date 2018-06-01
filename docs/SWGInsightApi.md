# SWGInsightApi

All URIs are relative to *https://ntp1node.nebl.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAddress**](SWGInsightApi.md#getaddress) | **GET** /ins/addr/{address} | Returns address object
[**getAddressBalance**](SWGInsightApi.md#getaddressbalance) | **GET** /ins/addr/{address}/balance | Returns address balance in sats
[**getAddressTotalReceived**](SWGInsightApi.md#getaddresstotalreceived) | **GET** /ins/addr/{address}/totalReceived | Returns total received by address in sats
[**getAddressTotalSent**](SWGInsightApi.md#getaddresstotalsent) | **GET** /ins/addr/{address}/totalSent | Returns total sent by address in sats
[**getAddressUnconfirmedBalance**](SWGInsightApi.md#getaddressunconfirmedbalance) | **GET** /ins/addr/{address}/unconfirmedBalance | Returns address unconfirmed balance in sats
[**getAddressUtxos**](SWGInsightApi.md#getaddressutxos) | **GET** /ins/addr/{address}/utxo | Returns all UTXOs at a given address
[**getBlock**](SWGInsightApi.md#getblock) | **GET** /ins/block/{blockhash} | Returns information regarding a Neblio block
[**getBlockIndex**](SWGInsightApi.md#getblockindex) | **GET** /ins/block-index/{blockindex} | Returns block hash of block
[**getRawTx**](SWGInsightApi.md#getrawtx) | **GET** /ins/rawtx/{txid} | Returns raw transaction hex
[**getStatus**](SWGInsightApi.md#getstatus) | **GET** /ins/status | Utility API for calling several blockchain node functions
[**getSync**](SWGInsightApi.md#getsync) | **GET** /ins/sync | Get node sync status
[**getTx**](SWGInsightApi.md#gettx) | **GET** /ins/tx/{txid} | Returns transaction object
[**getTxs**](SWGInsightApi.md#gettxs) | **GET** /ins/txs | Get transactions by block or address
[**sendTx**](SWGInsightApi.md#sendtx) | **POST** /ins/tx/send | Broadcasts a signed raw transaction to the network (not NTP1 specific)


# **getAddress**
```objc
-(NSURLSessionTask*) getAddressWithAddress: (NSString*) address
        completionHandler: (void (^)(SWGGetAddressResponse* output, NSError* error)) handler;
```

Returns address object

Returns NEBL address object containing information on a specific address

### Example 
```objc

NSString* address = @"address_example"; // Address

SWGInsightApi*apiInstance = [[SWGInsightApi alloc] init];

// Returns address object
[apiInstance getAddressWithAddress:address
          completionHandler: ^(SWGGetAddressResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGInsightApi->getAddress: %@", error);
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

# **getAddressBalance**
```objc
-(NSURLSessionTask*) getAddressBalanceWithAddress: (NSString*) address
        completionHandler: (void (^)(SWGGetAddressBalanceResponse* output, NSError* error)) handler;
```

Returns address balance in sats

Returns NEBL address balance in satoshis

### Example 
```objc

NSString* address = @"address_example"; // Address

SWGInsightApi*apiInstance = [[SWGInsightApi alloc] init];

// Returns address balance in sats
[apiInstance getAddressBalanceWithAddress:address
          completionHandler: ^(SWGGetAddressBalanceResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGInsightApi->getAddressBalance: %@", error);
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

# **getAddressTotalReceived**
```objc
-(NSURLSessionTask*) getAddressTotalReceivedWithAddress: (NSString*) address
        completionHandler: (void (^)(SWGGetAddressTotalReceivedResponse* output, NSError* error)) handler;
```

Returns total received by address in sats

Returns total NEBL received by address in satoshis

### Example 
```objc

NSString* address = @"address_example"; // Address

SWGInsightApi*apiInstance = [[SWGInsightApi alloc] init];

// Returns total received by address in sats
[apiInstance getAddressTotalReceivedWithAddress:address
          completionHandler: ^(SWGGetAddressTotalReceivedResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGInsightApi->getAddressTotalReceived: %@", error);
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

# **getAddressTotalSent**
```objc
-(NSURLSessionTask*) getAddressTotalSentWithAddress: (NSString*) address
        completionHandler: (void (^)(SWGGetAddressTotalSentResponse* output, NSError* error)) handler;
```

Returns total sent by address in sats

Returns total NEBL sent by address in satoshis

### Example 
```objc

NSString* address = @"address_example"; // Address

SWGInsightApi*apiInstance = [[SWGInsightApi alloc] init];

// Returns total sent by address in sats
[apiInstance getAddressTotalSentWithAddress:address
          completionHandler: ^(SWGGetAddressTotalSentResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGInsightApi->getAddressTotalSent: %@", error);
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

# **getAddressUnconfirmedBalance**
```objc
-(NSURLSessionTask*) getAddressUnconfirmedBalanceWithAddress: (NSString*) address
        completionHandler: (void (^)(SWGGetAddressUnconfirmedBalanceResponse* output, NSError* error)) handler;
```

Returns address unconfirmed balance in sats

Returns NEBL address unconfirmed balance in satoshis

### Example 
```objc

NSString* address = @"address_example"; // Address

SWGInsightApi*apiInstance = [[SWGInsightApi alloc] init];

// Returns address unconfirmed balance in sats
[apiInstance getAddressUnconfirmedBalanceWithAddress:address
          completionHandler: ^(SWGGetAddressUnconfirmedBalanceResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGInsightApi->getAddressUnconfirmedBalance: %@", error);
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

# **getAddressUtxos**
```objc
-(NSURLSessionTask*) getAddressUtxosWithAddress: (NSString*) address
        completionHandler: (void (^)(SWGGetAddressUtxosResponse* output, NSError* error)) handler;
```

Returns all UTXOs at a given address

Returns information on each Unspent Transaction Output contained at an address

### Example 
```objc

NSString* address = @"address_example"; // Address

SWGInsightApi*apiInstance = [[SWGInsightApi alloc] init];

// Returns all UTXOs at a given address
[apiInstance getAddressUtxosWithAddress:address
          completionHandler: ^(SWGGetAddressUtxosResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGInsightApi->getAddressUtxos: %@", error);
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

# **getBlock**
```objc
-(NSURLSessionTask*) getBlockWithBlockhash: (NSString*) blockhash
        completionHandler: (void (^)(SWGGetBlockResponse* output, NSError* error)) handler;
```

Returns information regarding a Neblio block

Returns blockchain data for a given block based upon the block hash

### Example 
```objc

NSString* blockhash = @"blockhash_example"; // Block Hash

SWGInsightApi*apiInstance = [[SWGInsightApi alloc] init];

// Returns information regarding a Neblio block
[apiInstance getBlockWithBlockhash:blockhash
          completionHandler: ^(SWGGetBlockResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGInsightApi->getBlock: %@", error);
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

# **getBlockIndex**
```objc
-(NSURLSessionTask*) getBlockIndexWithBlockindex: (NSNumber*) blockindex
        completionHandler: (void (^)(SWGGetBlockIndexResponse* output, NSError* error)) handler;
```

Returns block hash of block

Returns the block hash of a block at a given block index

### Example 
```objc

NSNumber* blockindex = @8.14; // Block Index

SWGInsightApi*apiInstance = [[SWGInsightApi alloc] init];

// Returns block hash of block
[apiInstance getBlockIndexWithBlockindex:blockindex
          completionHandler: ^(SWGGetBlockIndexResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGInsightApi->getBlockIndex: %@", error);
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

# **getRawTx**
```objc
-(NSURLSessionTask*) getRawTxWithTxid: (NSString*) txid
        completionHandler: (void (^)(SWGGetRawTxResponse* output, NSError* error)) handler;
```

Returns raw transaction hex

Returns raw transaction hex representing a NEBL transaction

### Example 
```objc

NSString* txid = @"txid_example"; // Transaction ID

SWGInsightApi*apiInstance = [[SWGInsightApi alloc] init];

// Returns raw transaction hex
[apiInstance getRawTxWithTxid:txid
          completionHandler: ^(SWGGetRawTxResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGInsightApi->getRawTx: %@", error);
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

# **getStatus**
```objc
-(NSURLSessionTask*) getStatusWithQ: (NSString*) q
        completionHandler: (void (^)(SWGGetStatusResponse* output, NSError* error)) handler;
```

Utility API for calling several blockchain node functions

tility API for calling several blockchain node functions - getInfo, getDifficulty, getBestBlockHash, getLastBlockHash

### Example 
```objc

NSString* q = @"q_example"; // Function to call, getInfo, getDifficulty, getBestBlockHash, or getLastBlockHash (optional)

SWGInsightApi*apiInstance = [[SWGInsightApi alloc] init];

// Utility API for calling several blockchain node functions
[apiInstance getStatusWithQ:q
          completionHandler: ^(SWGGetStatusResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGInsightApi->getStatus: %@", error);
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

# **getSync**
```objc
-(NSURLSessionTask*) getSyncWithCompletionHandler: 
        (void (^)(SWGGetSyncResponse* output, NSError* error)) handler;
```

Get node sync status

Returns information on the node's sync progress

### Example 
```objc


SWGInsightApi*apiInstance = [[SWGInsightApi alloc] init];

// Get node sync status
[apiInstance getSyncWithCompletionHandler: 
          ^(SWGGetSyncResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGInsightApi->getSync: %@", error);
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

# **getTx**
```objc
-(NSURLSessionTask*) getTxWithTxid: (NSString*) txid
        completionHandler: (void (^)(SWGGetTxResponse* output, NSError* error)) handler;
```

Returns transaction object

Returns NEBL transaction object representing a NEBL transaction

### Example 
```objc

NSString* txid = @"txid_example"; // Transaction ID

SWGInsightApi*apiInstance = [[SWGInsightApi alloc] init];

// Returns transaction object
[apiInstance getTxWithTxid:txid
          completionHandler: ^(SWGGetTxResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGInsightApi->getTx: %@", error);
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

# **getTxs**
```objc
-(NSURLSessionTask*) getTxsWithAddress: (NSString*) address
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

SWGInsightApi*apiInstance = [[SWGInsightApi alloc] init];

// Get transactions by block or address
[apiInstance getTxsWithAddress:address
              block:block
              page:page
          completionHandler: ^(SWGGetTxsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGInsightApi->getTxs: %@", error);
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

# **sendTx**
```objc
-(NSURLSessionTask*) sendTxWithBody: (SWGSendTxRequest*) body
        completionHandler: (void (^)(SWGBroadcastTxResponse* output, NSError* error)) handler;
```

Broadcasts a signed raw transaction to the network (not NTP1 specific)

Broadcasts a signed raw transaction to the network. If successful returns the txid of the broadcast trasnaction. 

### Example 
```objc

SWGSendTxRequest* body = [[SWGSendTxRequest alloc] init]; // Object representing a transaction to broadcast

SWGInsightApi*apiInstance = [[SWGInsightApi alloc] init];

// Broadcasts a signed raw transaction to the network (not NTP1 specific)
[apiInstance sendTxWithBody:body
          completionHandler: ^(SWGBroadcastTxResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGInsightApi->sendTx: %@", error);
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

