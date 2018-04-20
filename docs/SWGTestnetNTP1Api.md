# SWGTestnetNTP1Api

All URIs are relative to *https://ntp1node.nebl.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**testnetBroadcastTx**](SWGTestnetNTP1Api.md#testnetbroadcasttx) | **POST** /testnet/ntp1/broadcast | Broadcasts a signed raw transaction to the network
[**testnetBurnToken**](SWGTestnetNTP1Api.md#testnetburntoken) | **POST** /testnet/ntp1/burntoken | Builds a transaction that burns an NTP1 Token
[**testnetGetAddressInfo**](SWGTestnetNTP1Api.md#testnetgetaddressinfo) | **GET** /testnet/ntp1/addressinfo/{address} | Information On a Neblio Address
[**testnetGetTokenHolders**](SWGTestnetNTP1Api.md#testnetgettokenholders) | **GET** /testnet/ntp1/stakeholders/{tokenid} | Get Addresses Holding a Token
[**testnetGetTokenId**](SWGTestnetNTP1Api.md#testnetgettokenid) | **GET** /testnet/ntp1/tokenid/{tokensymbol} | Returns the tokenId representing a token
[**testnetGetTokenMetadataOfIssuance**](SWGTestnetNTP1Api.md#testnetgettokenmetadataofissuance) | **GET** /testnet/ntp1/tokenmetadata/{tokenid} | Get Issuance Metadata of Token
[**testnetGetTokenMetadataOfUtxo**](SWGTestnetNTP1Api.md#testnetgettokenmetadataofutxo) | **GET** /testnet/ntp1/tokenmetadata/{tokenid}/{utxo} | Get UTXO Metadata of Token
[**testnetGetTransactionInfo**](SWGTestnetNTP1Api.md#testnetgettransactioninfo) | **GET** /testnet/ntp1/transactioninfo/{txid} | Information On an NTP1 Transaction
[**testnetIssueToken**](SWGTestnetNTP1Api.md#testnetissuetoken) | **POST** /testnet/ntp1/issue | Builds a transaction that issues a new NTP1 Token
[**testnetSendToken**](SWGTestnetNTP1Api.md#testnetsendtoken) | **POST** /testnet/ntp1/sendtoken | Builds a transaction that sends an NTP1 Token


# **testnetBroadcastTx**
```objc
-(NSURLSessionTask*) testnetBroadcastTxWithBody: (SWGBroadcastTxRequest*) body
        completionHandler: (void (^)(SWGBroadcastTxResponse* output, NSError* error)) handler;
```

Broadcasts a signed raw transaction to the network

Broadcasts a signed raw transaction to the network. If successful returns the txid of the broadcast trasnaction. 

### Example 
```objc

SWGBroadcastTxRequest* body = [[SWGBroadcastTxRequest alloc] init]; // Object representing a transaction to broadcast

SWGTestnetNTP1Api*apiInstance = [[SWGTestnetNTP1Api alloc] init];

// Broadcasts a signed raw transaction to the network
[apiInstance testnetBroadcastTxWithBody:body
          completionHandler: ^(SWGBroadcastTxResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTestnetNTP1Api->testnetBroadcastTx: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SWGBroadcastTxRequest***](SWGBroadcastTxRequest.md)| Object representing a transaction to broadcast | 

### Return type

[**SWGBroadcastTxResponse***](SWGBroadcastTxResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetBurnToken**
```objc
-(NSURLSessionTask*) testnetBurnTokenWithBody: (SWGBurnTokenRequest*) body
        completionHandler: (void (^)(SWGBurnTokenResponse* output, NSError* error)) handler;
```

Builds a transaction that burns an NTP1 Token

Builds an unsigned raw transaction that burns an NTP1 token on the Neblio blockchain. 

### Example 
```objc

SWGBurnTokenRequest* body = [[SWGBurnTokenRequest alloc] init]; // Object representing the token to be burned

SWGTestnetNTP1Api*apiInstance = [[SWGTestnetNTP1Api alloc] init];

// Builds a transaction that burns an NTP1 Token
[apiInstance testnetBurnTokenWithBody:body
          completionHandler: ^(SWGBurnTokenResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTestnetNTP1Api->testnetBurnToken: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SWGBurnTokenRequest***](SWGBurnTokenRequest.md)| Object representing the token to be burned | 

### Return type

[**SWGBurnTokenResponse***](SWGBurnTokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetAddressInfo**
```objc
-(NSURLSessionTask*) testnetGetAddressInfoWithAddress: (NSString*) address
        completionHandler: (void (^)(SWGGetAddressInfoResponse* output, NSError* error)) handler;
```

Information On a Neblio Address

Returns both NEBL and NTP1 token UTXOs held at the given address. 

### Example 
```objc

NSString* address = @"address_example"; // Neblio Address to get information on.

SWGTestnetNTP1Api*apiInstance = [[SWGTestnetNTP1Api alloc] init];

// Information On a Neblio Address
[apiInstance testnetGetAddressInfoWithAddress:address
          completionHandler: ^(SWGGetAddressInfoResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTestnetNTP1Api->testnetGetAddressInfo: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| Neblio Address to get information on. | 

### Return type

[**SWGGetAddressInfoResponse***](SWGGetAddressInfoResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetTokenHolders**
```objc
-(NSURLSessionTask*) testnetGetTokenHoldersWithTokenid: (NSString*) tokenid
        completionHandler: (void (^)(SWGGetTokenHoldersResponse* output, NSError* error)) handler;
```

Get Addresses Holding a Token

Returns the the the addresses holding a token and how many tokens are held 

### Example 
```objc

NSString* tokenid = @"tokenid_example"; // TokenId to request metadata for

SWGTestnetNTP1Api*apiInstance = [[SWGTestnetNTP1Api alloc] init];

// Get Addresses Holding a Token
[apiInstance testnetGetTokenHoldersWithTokenid:tokenid
          completionHandler: ^(SWGGetTokenHoldersResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTestnetNTP1Api->testnetGetTokenHolders: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenid** | **NSString***| TokenId to request metadata for | 

### Return type

[**SWGGetTokenHoldersResponse***](SWGGetTokenHoldersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetTokenId**
```objc
-(NSURLSessionTask*) testnetGetTokenIdWithTokensymbol: (NSString*) tokensymbol
        completionHandler: (void (^)(SWGGetTokenIdResponse* output, NSError* error)) handler;
```

Returns the tokenId representing a token

Translates a token symbol to a tokenId if a token exists with that symbol on the network 

### Example 
```objc

NSString* tokensymbol = @"tokensymbol_example"; // Token symbol

SWGTestnetNTP1Api*apiInstance = [[SWGTestnetNTP1Api alloc] init];

// Returns the tokenId representing a token
[apiInstance testnetGetTokenIdWithTokensymbol:tokensymbol
          completionHandler: ^(SWGGetTokenIdResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTestnetNTP1Api->testnetGetTokenId: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokensymbol** | **NSString***| Token symbol | 

### Return type

[**SWGGetTokenIdResponse***](SWGGetTokenIdResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetTokenMetadataOfIssuance**
```objc
-(NSURLSessionTask*) testnetGetTokenMetadataOfIssuanceWithTokenid: (NSString*) tokenid
        completionHandler: (void (^)(SWGGetTokenMetadataResponse* output, NSError* error)) handler;
```

Get Issuance Metadata of Token

Returns the metadata associated with a token at time of issuance. 

### Example 
```objc

NSString* tokenid = @"tokenid_example"; // TokenId to request metadata for

SWGTestnetNTP1Api*apiInstance = [[SWGTestnetNTP1Api alloc] init];

// Get Issuance Metadata of Token
[apiInstance testnetGetTokenMetadataOfIssuanceWithTokenid:tokenid
          completionHandler: ^(SWGGetTokenMetadataResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTestnetNTP1Api->testnetGetTokenMetadataOfIssuance: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenid** | **NSString***| TokenId to request metadata for | 

### Return type

[**SWGGetTokenMetadataResponse***](SWGGetTokenMetadataResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetTokenMetadataOfUtxo**
```objc
-(NSURLSessionTask*) testnetGetTokenMetadataOfUtxoWithTokenid: (NSString*) tokenid
    utxo: (NSString*) utxo
        completionHandler: (void (^)(SWGGetTokenMetadataResponse* output, NSError* error)) handler;
```

Get UTXO Metadata of Token

Returns the metadata associated with a token for that specific utxo instead of the issuance transaction. 

### Example 
```objc

NSString* tokenid = @"tokenid_example"; // TokenId to request metadata for
NSString* utxo = @"utxo_example"; // Specific UTXO to request metadata for

SWGTestnetNTP1Api*apiInstance = [[SWGTestnetNTP1Api alloc] init];

// Get UTXO Metadata of Token
[apiInstance testnetGetTokenMetadataOfUtxoWithTokenid:tokenid
              utxo:utxo
          completionHandler: ^(SWGGetTokenMetadataResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTestnetNTP1Api->testnetGetTokenMetadataOfUtxo: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenid** | **NSString***| TokenId to request metadata for | 
 **utxo** | **NSString***| Specific UTXO to request metadata for | 

### Return type

[**SWGGetTokenMetadataResponse***](SWGGetTokenMetadataResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetTransactionInfo**
```objc
-(NSURLSessionTask*) testnetGetTransactionInfoWithTxid: (NSString*) txid
        completionHandler: (void (^)(SWGGetTransactionInfoResponse* output, NSError* error)) handler;
```

Information On an NTP1 Transaction

Returns detailed information regarding an NTP1 transaction. 

### Example 
```objc

NSString* txid = @"txid_example"; // Neblio txid to get information on.

SWGTestnetNTP1Api*apiInstance = [[SWGTestnetNTP1Api alloc] init];

// Information On an NTP1 Transaction
[apiInstance testnetGetTransactionInfoWithTxid:txid
          completionHandler: ^(SWGGetTransactionInfoResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTestnetNTP1Api->testnetGetTransactionInfo: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **txid** | **NSString***| Neblio txid to get information on. | 

### Return type

[**SWGGetTransactionInfoResponse***](SWGGetTransactionInfoResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetIssueToken**
```objc
-(NSURLSessionTask*) testnetIssueTokenWithBody: (SWGIssueTokenRequest*) body
        completionHandler: (void (^)(SWGIssueTokenResponse* output, NSError* error)) handler;
```

Builds a transaction that issues a new NTP1 Token

Builds an unsigned raw transaction that issues a new NTP1 token on the Neblio blockchain. 

### Example 
```objc

SWGIssueTokenRequest* body = [[SWGIssueTokenRequest alloc] init]; // Object representing the token to be created

SWGTestnetNTP1Api*apiInstance = [[SWGTestnetNTP1Api alloc] init];

// Builds a transaction that issues a new NTP1 Token
[apiInstance testnetIssueTokenWithBody:body
          completionHandler: ^(SWGIssueTokenResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTestnetNTP1Api->testnetIssueToken: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SWGIssueTokenRequest***](SWGIssueTokenRequest.md)| Object representing the token to be created | 

### Return type

[**SWGIssueTokenResponse***](SWGIssueTokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetSendToken**
```objc
-(NSURLSessionTask*) testnetSendTokenWithBody: (SWGSendTokenRequest*) body
        completionHandler: (void (^)(SWGSendTokenResponse* output, NSError* error)) handler;
```

Builds a transaction that sends an NTP1 Token

Builds an unsigned raw transaction that sends an NTP1 token on the Neblio blockchain. 

### Example 
```objc

SWGSendTokenRequest* body = [[SWGSendTokenRequest alloc] init]; // Object representing the token to be sent

SWGTestnetNTP1Api*apiInstance = [[SWGTestnetNTP1Api alloc] init];

// Builds a transaction that sends an NTP1 Token
[apiInstance testnetSendTokenWithBody:body
          completionHandler: ^(SWGSendTokenResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGTestnetNTP1Api->testnetSendToken: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SWGSendTokenRequest***](SWGSendTokenRequest.md)| Object representing the token to be sent | 

### Return type

[**SWGSendTokenResponse***](SWGSendTokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

