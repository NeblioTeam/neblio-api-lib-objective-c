# OAITestnetNTP1Api

All URIs are relative to *https://ntp1node.nebl.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**testnetBroadcastTx**](OAITestnetNTP1Api.md#testnetbroadcasttx) | **POST** /testnet/ntp1/broadcast | Broadcasts a signed raw transaction to the network
[**testnetBurnToken**](OAITestnetNTP1Api.md#testnetburntoken) | **POST** /testnet/ntp1/burntoken | Builds a transaction that burns an NTP1 Token
[**testnetGetAddressInfo**](OAITestnetNTP1Api.md#testnetgetaddressinfo) | **GET** /testnet/ntp1/addressinfo/{address} | Information On a Neblio Address
[**testnetGetTokenHolders**](OAITestnetNTP1Api.md#testnetgettokenholders) | **GET** /testnet/ntp1/stakeholders/{tokenid} | Get Addresses Holding a Token
[**testnetGetTokenId**](OAITestnetNTP1Api.md#testnetgettokenid) | **GET** /testnet/ntp1/tokenid/{tokensymbol} | Returns the tokenId representing a token
[**testnetGetTokenMetadataOfIssuance**](OAITestnetNTP1Api.md#testnetgettokenmetadataofissuance) | **GET** /testnet/ntp1/tokenmetadata/{tokenid} | Get Issuance Metadata of Token
[**testnetGetTokenMetadataOfUtxo**](OAITestnetNTP1Api.md#testnetgettokenmetadataofutxo) | **GET** /testnet/ntp1/tokenmetadata/{tokenid}/{utxo} | Get UTXO Metadata of Token
[**testnetGetTransactionInfo**](OAITestnetNTP1Api.md#testnetgettransactioninfo) | **GET** /testnet/ntp1/transactioninfo/{txid} | Information On an NTP1 Transaction
[**testnetIssueToken**](OAITestnetNTP1Api.md#testnetissuetoken) | **POST** /testnet/ntp1/issue | Builds a transaction that issues a new NTP1 Token
[**testnetSendToken**](OAITestnetNTP1Api.md#testnetsendtoken) | **POST** /testnet/ntp1/sendtoken | Builds a transaction that sends an NTP1 Token


# **testnetBroadcastTx**
```objc
-(NSURLSessionTask*) testnetBroadcastTxWithBroadcastTxRequest: (OAIBroadcastTxRequest*) broadcastTxRequest
        completionHandler: (void (^)(OAIBroadcastTxResponse* output, NSError* error)) handler;
```

Broadcasts a signed raw transaction to the network

Broadcasts a signed raw transaction to the network. If successful returns the txid of the broadcast trasnaction. 

### Example 
```objc

OAIBroadcastTxRequest* broadcastTxRequest = [[OAIBroadcastTxRequest alloc] init]; // Object representing a transaction to broadcast

OAITestnetNTP1Api*apiInstance = [[OAITestnetNTP1Api alloc] init];

// Broadcasts a signed raw transaction to the network
[apiInstance testnetBroadcastTxWithBroadcastTxRequest:broadcastTxRequest
          completionHandler: ^(OAIBroadcastTxResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAITestnetNTP1Api->testnetBroadcastTx: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **broadcastTxRequest** | [**OAIBroadcastTxRequest***](OAIBroadcastTxRequest.md)| Object representing a transaction to broadcast | 

### Return type

[**OAIBroadcastTxResponse***](OAIBroadcastTxResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetBurnToken**
```objc
-(NSURLSessionTask*) testnetBurnTokenWithBurnTokenRequest: (OAIBurnTokenRequest*) burnTokenRequest
        completionHandler: (void (^)(OAIBurnTokenResponse* output, NSError* error)) handler;
```

Builds a transaction that burns an NTP1 Token

Builds an unsigned raw transaction that burns an NTP1 token on the Neblio blockchain. 

### Example 
```objc

OAIBurnTokenRequest* burnTokenRequest = [[OAIBurnTokenRequest alloc] init]; // Object representing the token to be burned

OAITestnetNTP1Api*apiInstance = [[OAITestnetNTP1Api alloc] init];

// Builds a transaction that burns an NTP1 Token
[apiInstance testnetBurnTokenWithBurnTokenRequest:burnTokenRequest
          completionHandler: ^(OAIBurnTokenResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAITestnetNTP1Api->testnetBurnToken: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **burnTokenRequest** | [**OAIBurnTokenRequest***](OAIBurnTokenRequest.md)| Object representing the token to be burned | 

### Return type

[**OAIBurnTokenResponse***](OAIBurnTokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetAddressInfo**
```objc
-(NSURLSessionTask*) testnetGetAddressInfoWithAddress: (NSString*) address
        completionHandler: (void (^)(OAIGetAddressInfoResponse* output, NSError* error)) handler;
```

Information On a Neblio Address

Returns both NEBL and NTP1 token UTXOs held at the given address. 

### Example 
```objc

NSString* address = @"address_example"; // Neblio Address to get information on.

OAITestnetNTP1Api*apiInstance = [[OAITestnetNTP1Api alloc] init];

// Information On a Neblio Address
[apiInstance testnetGetAddressInfoWithAddress:address
          completionHandler: ^(OAIGetAddressInfoResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAITestnetNTP1Api->testnetGetAddressInfo: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| Neblio Address to get information on. | 

### Return type

[**OAIGetAddressInfoResponse***](OAIGetAddressInfoResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetTokenHolders**
```objc
-(NSURLSessionTask*) testnetGetTokenHoldersWithTokenid: (NSString*) tokenid
        completionHandler: (void (^)(OAIGetTokenHoldersResponse* output, NSError* error)) handler;
```

Get Addresses Holding a Token

Returns the the the addresses holding a token and how many tokens are held 

### Example 
```objc

NSString* tokenid = @"tokenid_example"; // TokenId to request metadata for

OAITestnetNTP1Api*apiInstance = [[OAITestnetNTP1Api alloc] init];

// Get Addresses Holding a Token
[apiInstance testnetGetTokenHoldersWithTokenid:tokenid
          completionHandler: ^(OAIGetTokenHoldersResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAITestnetNTP1Api->testnetGetTokenHolders: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenid** | **NSString***| TokenId to request metadata for | 

### Return type

[**OAIGetTokenHoldersResponse***](OAIGetTokenHoldersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetTokenId**
```objc
-(NSURLSessionTask*) testnetGetTokenIdWithTokensymbol: (NSString*) tokensymbol
        completionHandler: (void (^)(OAIGetTokenIdResponse* output, NSError* error)) handler;
```

Returns the tokenId representing a token

Translates a token symbol to a tokenId if a token exists with that symbol on the network 

### Example 
```objc

NSString* tokensymbol = @"tokensymbol_example"; // Token symbol

OAITestnetNTP1Api*apiInstance = [[OAITestnetNTP1Api alloc] init];

// Returns the tokenId representing a token
[apiInstance testnetGetTokenIdWithTokensymbol:tokensymbol
          completionHandler: ^(OAIGetTokenIdResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAITestnetNTP1Api->testnetGetTokenId: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokensymbol** | **NSString***| Token symbol | 

### Return type

[**OAIGetTokenIdResponse***](OAIGetTokenIdResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetTokenMetadataOfIssuance**
```objc
-(NSURLSessionTask*) testnetGetTokenMetadataOfIssuanceWithTokenid: (NSString*) tokenid
        completionHandler: (void (^)(OAIGetTokenMetadataResponse* output, NSError* error)) handler;
```

Get Issuance Metadata of Token

Returns the metadata associated with a token at time of issuance. 

### Example 
```objc

NSString* tokenid = @"tokenid_example"; // TokenId to request metadata for

OAITestnetNTP1Api*apiInstance = [[OAITestnetNTP1Api alloc] init];

// Get Issuance Metadata of Token
[apiInstance testnetGetTokenMetadataOfIssuanceWithTokenid:tokenid
          completionHandler: ^(OAIGetTokenMetadataResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAITestnetNTP1Api->testnetGetTokenMetadataOfIssuance: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenid** | **NSString***| TokenId to request metadata for | 

### Return type

[**OAIGetTokenMetadataResponse***](OAIGetTokenMetadataResponse.md)

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
        completionHandler: (void (^)(OAIGetTokenMetadataResponse* output, NSError* error)) handler;
```

Get UTXO Metadata of Token

Returns the metadata associated with a token for that specific utxo instead of the issuance transaction. 

### Example 
```objc

NSString* tokenid = @"tokenid_example"; // TokenId to request metadata for
NSString* utxo = @"utxo_example"; // Specific UTXO to request metadata for

OAITestnetNTP1Api*apiInstance = [[OAITestnetNTP1Api alloc] init];

// Get UTXO Metadata of Token
[apiInstance testnetGetTokenMetadataOfUtxoWithTokenid:tokenid
              utxo:utxo
          completionHandler: ^(OAIGetTokenMetadataResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAITestnetNTP1Api->testnetGetTokenMetadataOfUtxo: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenid** | **NSString***| TokenId to request metadata for | 
 **utxo** | **NSString***| Specific UTXO to request metadata for | 

### Return type

[**OAIGetTokenMetadataResponse***](OAIGetTokenMetadataResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetGetTransactionInfo**
```objc
-(NSURLSessionTask*) testnetGetTransactionInfoWithTxid: (NSString*) txid
        completionHandler: (void (^)(OAIGetTransactionInfoResponse* output, NSError* error)) handler;
```

Information On an NTP1 Transaction

Returns detailed information regarding an NTP1 transaction. 

### Example 
```objc

NSString* txid = @"txid_example"; // Neblio txid to get information on.

OAITestnetNTP1Api*apiInstance = [[OAITestnetNTP1Api alloc] init];

// Information On an NTP1 Transaction
[apiInstance testnetGetTransactionInfoWithTxid:txid
          completionHandler: ^(OAIGetTransactionInfoResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAITestnetNTP1Api->testnetGetTransactionInfo: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **txid** | **NSString***| Neblio txid to get information on. | 

### Return type

[**OAIGetTransactionInfoResponse***](OAIGetTransactionInfoResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetIssueToken**
```objc
-(NSURLSessionTask*) testnetIssueTokenWithIssueTokenRequest: (OAIIssueTokenRequest*) issueTokenRequest
        completionHandler: (void (^)(OAIIssueTokenResponse* output, NSError* error)) handler;
```

Builds a transaction that issues a new NTP1 Token

Builds an unsigned raw transaction that issues a new NTP1 token on the Neblio blockchain. 

### Example 
```objc

OAIIssueTokenRequest* issueTokenRequest = [[OAIIssueTokenRequest alloc] init]; // Object representing the token to be created

OAITestnetNTP1Api*apiInstance = [[OAITestnetNTP1Api alloc] init];

// Builds a transaction that issues a new NTP1 Token
[apiInstance testnetIssueTokenWithIssueTokenRequest:issueTokenRequest
          completionHandler: ^(OAIIssueTokenResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAITestnetNTP1Api->testnetIssueToken: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issueTokenRequest** | [**OAIIssueTokenRequest***](OAIIssueTokenRequest.md)| Object representing the token to be created | 

### Return type

[**OAIIssueTokenResponse***](OAIIssueTokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testnetSendToken**
```objc
-(NSURLSessionTask*) testnetSendTokenWithSendTokenRequest: (OAISendTokenRequest*) sendTokenRequest
        completionHandler: (void (^)(OAISendTokenResponse* output, NSError* error)) handler;
```

Builds a transaction that sends an NTP1 Token

Builds an unsigned raw transaction that sends an NTP1 token on the Neblio blockchain. 

### Example 
```objc

OAISendTokenRequest* sendTokenRequest = [[OAISendTokenRequest alloc] init]; // Object representing the token to be sent

OAITestnetNTP1Api*apiInstance = [[OAITestnetNTP1Api alloc] init];

// Builds a transaction that sends an NTP1 Token
[apiInstance testnetSendTokenWithSendTokenRequest:sendTokenRequest
          completionHandler: ^(OAISendTokenResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAITestnetNTP1Api->testnetSendToken: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sendTokenRequest** | [**OAISendTokenRequest***](OAISendTokenRequest.md)| Object representing the token to be sent | 

### Return type

[**OAISendTokenResponse***](OAISendTokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

