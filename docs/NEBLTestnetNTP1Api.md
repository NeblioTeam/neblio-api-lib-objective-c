# NEBLTestnetNTP1Api

All URIs are relative to *https://ntp1node.nebl.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**testnetBroadcastTx**](NEBLTestnetNTP1Api.md#testnetbroadcasttx) | **POST** /testnet/ntp1/broadcast | Broadcasts a signed raw transaction to the network
[**testnetBurnToken**](NEBLTestnetNTP1Api.md#testnetburntoken) | **POST** /testnet/ntp1/burntoken | Builds a transaction that burns an NTP1 Token
[**testnetGetAddressInfo**](NEBLTestnetNTP1Api.md#testnetgetaddressinfo) | **GET** /testnet/ntp1/addressinfo/{address} | Information On a Neblio Address
[**testnetGetTokenHolders**](NEBLTestnetNTP1Api.md#testnetgettokenholders) | **GET** /testnet/ntp1/stakeholders/{tokenid} | Get Addresses Holding a Token
[**testnetGetTokenId**](NEBLTestnetNTP1Api.md#testnetgettokenid) | **GET** /testnet/ntp1/tokenid/{tokensymbol} | Returns the tokenId representing a token
[**testnetGetTokenMetadata**](NEBLTestnetNTP1Api.md#testnetgettokenmetadata) | **GET** /testnet/ntp1/tokenmetadata/{tokenid} | Get Metadata of Token
[**testnetGetTokenMetadataOfUtxo**](NEBLTestnetNTP1Api.md#testnetgettokenmetadataofutxo) | **GET** /testnet/ntp1/tokenmetadata/{tokenid}/{utxo} | Get UTXO Metadata of Token
[**testnetGetTransactionInfo**](NEBLTestnetNTP1Api.md#testnetgettransactioninfo) | **GET** /testnet/ntp1/transactioninfo/{txid} | Information On an NTP1 Transaction
[**testnetIssueToken**](NEBLTestnetNTP1Api.md#testnetissuetoken) | **POST** /testnet/ntp1/issue | Builds a transaction that issues a new NTP1 Token
[**testnetSendToken**](NEBLTestnetNTP1Api.md#testnetsendtoken) | **POST** /testnet/ntp1/sendtoken | Builds a transaction that sends an NTP1 Token


# **testnetBroadcastTx**
```objc
-(NSURLSessionTask*) testnetBroadcastTxWithBroadcastTxRequest: (NEBLBroadcastTxRequest*) broadcastTxRequest
        completionHandler: (void (^)(NEBLBroadcastTxResponse* output, NSError* error)) handler;
```

Broadcasts a signed raw transaction to the network

Broadcasts a signed raw transaction to the network. If successful returns the txid of the broadcast trasnaction. 

### Example 
```objc

NEBLBroadcastTxRequest* broadcastTxRequest = [[NEBLBroadcastTxRequest alloc] init]; // Object representing a transaction to broadcast

NEBLTestnetNTP1Api*apiInstance = [[NEBLTestnetNTP1Api alloc] init];

// Broadcasts a signed raw transaction to the network
[apiInstance testnetBroadcastTxWithBroadcastTxRequest:broadcastTxRequest
          completionHandler: ^(NEBLBroadcastTxResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NEBLTestnetNTP1Api->testnetBroadcastTx: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **broadcastTxRequest** | [**NEBLBroadcastTxRequest***](NEBLBroadcastTxRequest.md)| Object representing a transaction to broadcast | 

### Return type

[**NEBLBroadcastTxResponse***](NEBLBroadcastTxResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetBurnToken**
```objc
-(NSURLSessionTask*) testnetBurnTokenWithBurnTokenRequest: (NEBLBurnTokenRequest*) burnTokenRequest
        completionHandler: (void (^)(NEBLBurnTokenResponse* output, NSError* error)) handler;
```

Builds a transaction that burns an NTP1 Token

Builds an unsigned raw transaction that burns an NTP1 token on the Neblio blockchain. 

### Example 
```objc

NEBLBurnTokenRequest* burnTokenRequest = [[NEBLBurnTokenRequest alloc] init]; // Object representing the token to be burned

NEBLTestnetNTP1Api*apiInstance = [[NEBLTestnetNTP1Api alloc] init];

// Builds a transaction that burns an NTP1 Token
[apiInstance testnetBurnTokenWithBurnTokenRequest:burnTokenRequest
          completionHandler: ^(NEBLBurnTokenResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NEBLTestnetNTP1Api->testnetBurnToken: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **burnTokenRequest** | [**NEBLBurnTokenRequest***](NEBLBurnTokenRequest.md)| Object representing the token to be burned | 

### Return type

[**NEBLBurnTokenResponse***](NEBLBurnTokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetAddressInfo**
```objc
-(NSURLSessionTask*) testnetGetAddressInfoWithAddress: (NSString*) address
        completionHandler: (void (^)(NEBLGetAddressInfoResponse* output, NSError* error)) handler;
```

Information On a Neblio Address

Returns both NEBL and NTP1 token UTXOs held at the given address. 

### Example 
```objc

NSString* address = @"address_example"; // Neblio Address to get information on.

NEBLTestnetNTP1Api*apiInstance = [[NEBLTestnetNTP1Api alloc] init];

// Information On a Neblio Address
[apiInstance testnetGetAddressInfoWithAddress:address
          completionHandler: ^(NEBLGetAddressInfoResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NEBLTestnetNTP1Api->testnetGetAddressInfo: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| Neblio Address to get information on. | 

### Return type

[**NEBLGetAddressInfoResponse***](NEBLGetAddressInfoResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetTokenHolders**
```objc
-(NSURLSessionTask*) testnetGetTokenHoldersWithTokenid: (NSString*) tokenid
        completionHandler: (void (^)(NEBLGetTokenHoldersResponse* output, NSError* error)) handler;
```

Get Addresses Holding a Token

Returns the the the addresses holding a token and how many tokens are held 

### Example 
```objc

NSString* tokenid = @"tokenid_example"; // TokenId to request metadata for

NEBLTestnetNTP1Api*apiInstance = [[NEBLTestnetNTP1Api alloc] init];

// Get Addresses Holding a Token
[apiInstance testnetGetTokenHoldersWithTokenid:tokenid
          completionHandler: ^(NEBLGetTokenHoldersResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NEBLTestnetNTP1Api->testnetGetTokenHolders: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenid** | **NSString***| TokenId to request metadata for | 

### Return type

[**NEBLGetTokenHoldersResponse***](NEBLGetTokenHoldersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetTokenId**
```objc
-(NSURLSessionTask*) testnetGetTokenIdWithTokensymbol: (NSString*) tokensymbol
        completionHandler: (void (^)(NEBLGetTokenIdResponse* output, NSError* error)) handler;
```

Returns the tokenId representing a token

Translates a token symbol to a tokenId if a token exists with that symbol on the network 

### Example 
```objc

NSString* tokensymbol = @"tokensymbol_example"; // Token symbol

NEBLTestnetNTP1Api*apiInstance = [[NEBLTestnetNTP1Api alloc] init];

// Returns the tokenId representing a token
[apiInstance testnetGetTokenIdWithTokensymbol:tokensymbol
          completionHandler: ^(NEBLGetTokenIdResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NEBLTestnetNTP1Api->testnetGetTokenId: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokensymbol** | **NSString***| Token symbol | 

### Return type

[**NEBLGetTokenIdResponse***](NEBLGetTokenIdResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetTokenMetadata**
```objc
-(NSURLSessionTask*) testnetGetTokenMetadataWithTokenid: (NSString*) tokenid
    verbosity: (NSNumber*) verbosity
        completionHandler: (void (^)(NEBLGetTokenMetadataResponse* output, NSError* error)) handler;
```

Get Metadata of Token

Returns the metadata associated with a token. 

### Example 
```objc

NSString* tokenid = @"tokenid_example"; // TokenId to request metadata for
NSNumber* verbosity = @56; // 0 (Default) is fastest, 1 contains token stats, 2 contains token holding addresses (optional)

NEBLTestnetNTP1Api*apiInstance = [[NEBLTestnetNTP1Api alloc] init];

// Get Metadata of Token
[apiInstance testnetGetTokenMetadataWithTokenid:tokenid
              verbosity:verbosity
          completionHandler: ^(NEBLGetTokenMetadataResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NEBLTestnetNTP1Api->testnetGetTokenMetadata: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenid** | **NSString***| TokenId to request metadata for | 
 **verbosity** | **NSNumber***| 0 (Default) is fastest, 1 contains token stats, 2 contains token holding addresses | [optional] 

### Return type

[**NEBLGetTokenMetadataResponse***](NEBLGetTokenMetadataResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetTokenMetadataOfUtxo**
```objc
-(NSURLSessionTask*) testnetGetTokenMetadataOfUtxoWithTokenid: (NSString*) tokenid
    utxo: (NSString*) utxo
    verbosity: (NSNumber*) verbosity
        completionHandler: (void (^)(NEBLGetTokenMetadataResponse* output, NSError* error)) handler;
```

Get UTXO Metadata of Token

Returns the metadata associated with a token for that specific utxo instead of the issuance transaction. 

### Example 
```objc

NSString* tokenid = @"tokenid_example"; // TokenId to request metadata for
NSString* utxo = @"utxo_example"; // Specific UTXO to request metadata for
NSNumber* verbosity = @56; // 0 (Default) is fastest, 1 contains token stats, 2 contains token holding addresses (optional)

NEBLTestnetNTP1Api*apiInstance = [[NEBLTestnetNTP1Api alloc] init];

// Get UTXO Metadata of Token
[apiInstance testnetGetTokenMetadataOfUtxoWithTokenid:tokenid
              utxo:utxo
              verbosity:verbosity
          completionHandler: ^(NEBLGetTokenMetadataResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NEBLTestnetNTP1Api->testnetGetTokenMetadataOfUtxo: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenid** | **NSString***| TokenId to request metadata for | 
 **utxo** | **NSString***| Specific UTXO to request metadata for | 
 **verbosity** | **NSNumber***| 0 (Default) is fastest, 1 contains token stats, 2 contains token holding addresses | [optional] 

### Return type

[**NEBLGetTokenMetadataResponse***](NEBLGetTokenMetadataResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetTransactionInfo**
```objc
-(NSURLSessionTask*) testnetGetTransactionInfoWithTxid: (NSString*) txid
        completionHandler: (void (^)(NEBLGetTransactionInfoResponse* output, NSError* error)) handler;
```

Information On an NTP1 Transaction

Returns detailed information regarding an NTP1 transaction. 

### Example 
```objc

NSString* txid = @"txid_example"; // Neblio txid to get information on.

NEBLTestnetNTP1Api*apiInstance = [[NEBLTestnetNTP1Api alloc] init];

// Information On an NTP1 Transaction
[apiInstance testnetGetTransactionInfoWithTxid:txid
          completionHandler: ^(NEBLGetTransactionInfoResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NEBLTestnetNTP1Api->testnetGetTransactionInfo: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **txid** | **NSString***| Neblio txid to get information on. | 

### Return type

[**NEBLGetTransactionInfoResponse***](NEBLGetTransactionInfoResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetIssueToken**
```objc
-(NSURLSessionTask*) testnetIssueTokenWithIssueTokenRequest: (NEBLIssueTokenRequest*) issueTokenRequest
        completionHandler: (void (^)(NEBLIssueTokenResponse* output, NSError* error)) handler;
```

Builds a transaction that issues a new NTP1 Token

Builds an unsigned raw transaction that issues a new NTP1 token on the Neblio blockchain. 

### Example 
```objc

NEBLIssueTokenRequest* issueTokenRequest = [[NEBLIssueTokenRequest alloc] init]; // Object representing the token to be created

NEBLTestnetNTP1Api*apiInstance = [[NEBLTestnetNTP1Api alloc] init];

// Builds a transaction that issues a new NTP1 Token
[apiInstance testnetIssueTokenWithIssueTokenRequest:issueTokenRequest
          completionHandler: ^(NEBLIssueTokenResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NEBLTestnetNTP1Api->testnetIssueToken: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issueTokenRequest** | [**NEBLIssueTokenRequest***](NEBLIssueTokenRequest.md)| Object representing the token to be created | 

### Return type

[**NEBLIssueTokenResponse***](NEBLIssueTokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetSendToken**
```objc
-(NSURLSessionTask*) testnetSendTokenWithSendTokenRequest: (NEBLSendTokenRequest*) sendTokenRequest
        completionHandler: (void (^)(NEBLSendTokenResponse* output, NSError* error)) handler;
```

Builds a transaction that sends an NTP1 Token

Builds an unsigned raw transaction that sends an NTP1 token on the Neblio blockchain. 

### Example 
```objc

NEBLSendTokenRequest* sendTokenRequest = [[NEBLSendTokenRequest alloc] init]; // Object representing the token to be sent

NEBLTestnetNTP1Api*apiInstance = [[NEBLTestnetNTP1Api alloc] init];

// Builds a transaction that sends an NTP1 Token
[apiInstance testnetSendTokenWithSendTokenRequest:sendTokenRequest
          completionHandler: ^(NEBLSendTokenResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NEBLTestnetNTP1Api->testnetSendToken: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sendTokenRequest** | [**NEBLSendTokenRequest***](NEBLSendTokenRequest.md)| Object representing the token to be sent | 

### Return type

[**NEBLSendTokenResponse***](NEBLSendTokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

