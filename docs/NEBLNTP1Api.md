# NEBLNTP1Api

All URIs are relative to *https://ntp1node.nebl.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**broadcastTx**](NEBLNTP1Api.md#broadcasttx) | **POST** /ntp1/broadcast | Broadcasts a signed raw transaction to the network
[**burnToken**](NEBLNTP1Api.md#burntoken) | **POST** /ntp1/burntoken | Builds a transaction that burns an NTP1 Token
[**getAddressInfo**](NEBLNTP1Api.md#getaddressinfo) | **GET** /ntp1/addressinfo/{address} | Information On a Neblio Address
[**getTokenHolders**](NEBLNTP1Api.md#gettokenholders) | **GET** /ntp1/stakeholders/{tokenid} | Get Addresses Holding a Token
[**getTokenId**](NEBLNTP1Api.md#gettokenid) | **GET** /ntp1/tokenid/{tokensymbol} | Returns the tokenId representing a token
[**getTokenMetadata**](NEBLNTP1Api.md#gettokenmetadata) | **GET** /ntp1/tokenmetadata/{tokenid} | Get Metadata of Token
[**getTokenMetadataOfUtxo**](NEBLNTP1Api.md#gettokenmetadataofutxo) | **GET** /ntp1/tokenmetadata/{tokenid}/{utxo} | Get UTXO Metadata of Token
[**getTransactionInfo**](NEBLNTP1Api.md#gettransactioninfo) | **GET** /ntp1/transactioninfo/{txid} | Information On an NTP1 Transaction
[**issueToken**](NEBLNTP1Api.md#issuetoken) | **POST** /ntp1/issue | Builds a transaction that issues a new NTP1 Token
[**sendToken**](NEBLNTP1Api.md#sendtoken) | **POST** /ntp1/sendtoken | Builds a transaction that sends an NTP1 Token


# **broadcastTx**
```objc
-(NSURLSessionTask*) broadcastTxWithBroadcastTxRequest: (NEBLBroadcastTxRequest*) broadcastTxRequest
        completionHandler: (void (^)(NEBLBroadcastTxResponse* output, NSError* error)) handler;
```

Broadcasts a signed raw transaction to the network

Broadcasts a signed raw transaction to the network. If successful returns the txid of the broadcast trasnaction. 

### Example 
```objc

NEBLBroadcastTxRequest* broadcastTxRequest = [[NEBLBroadcastTxRequest alloc] init]; // Object representing a transaction to broadcast

NEBLNTP1Api*apiInstance = [[NEBLNTP1Api alloc] init];

// Broadcasts a signed raw transaction to the network
[apiInstance broadcastTxWithBroadcastTxRequest:broadcastTxRequest
          completionHandler: ^(NEBLBroadcastTxResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NEBLNTP1Api->broadcastTx: %@", error);
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

# **burnToken**
```objc
-(NSURLSessionTask*) burnTokenWithBurnTokenRequest: (NEBLBurnTokenRequest*) burnTokenRequest
        completionHandler: (void (^)(NEBLBurnTokenResponse* output, NSError* error)) handler;
```

Builds a transaction that burns an NTP1 Token

Builds an unsigned raw transaction that burns an NTP1 token on the Neblio blockchain. 

### Example 
```objc

NEBLBurnTokenRequest* burnTokenRequest = [[NEBLBurnTokenRequest alloc] init]; // Object representing the token to be burned

NEBLNTP1Api*apiInstance = [[NEBLNTP1Api alloc] init];

// Builds a transaction that burns an NTP1 Token
[apiInstance burnTokenWithBurnTokenRequest:burnTokenRequest
          completionHandler: ^(NEBLBurnTokenResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NEBLNTP1Api->burnToken: %@", error);
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

# **getAddressInfo**
```objc
-(NSURLSessionTask*) getAddressInfoWithAddress: (NSString*) address
        completionHandler: (void (^)(NEBLGetAddressInfoResponse* output, NSError* error)) handler;
```

Information On a Neblio Address

Returns both NEBL and NTP1 token UTXOs held at the given address. 

### Example 
```objc

NSString* address = @"address_example"; // Neblio Address to get information on.

NEBLNTP1Api*apiInstance = [[NEBLNTP1Api alloc] init];

// Information On a Neblio Address
[apiInstance getAddressInfoWithAddress:address
          completionHandler: ^(NEBLGetAddressInfoResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NEBLNTP1Api->getAddressInfo: %@", error);
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

# **getTokenHolders**
```objc
-(NSURLSessionTask*) getTokenHoldersWithTokenid: (NSString*) tokenid
        completionHandler: (void (^)(NEBLGetTokenHoldersResponse* output, NSError* error)) handler;
```

Get Addresses Holding a Token

Returns the the the addresses holding a token and how many tokens are held 

### Example 
```objc

NSString* tokenid = @"tokenid_example"; // TokenId to request metadata for

NEBLNTP1Api*apiInstance = [[NEBLNTP1Api alloc] init];

// Get Addresses Holding a Token
[apiInstance getTokenHoldersWithTokenid:tokenid
          completionHandler: ^(NEBLGetTokenHoldersResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NEBLNTP1Api->getTokenHolders: %@", error);
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

# **getTokenId**
```objc
-(NSURLSessionTask*) getTokenIdWithTokensymbol: (NSString*) tokensymbol
        completionHandler: (void (^)(NEBLGetTokenIdResponse* output, NSError* error)) handler;
```

Returns the tokenId representing a token

Translates a token symbol to a tokenId if a token exists with that symbol on the network 

### Example 
```objc

NSString* tokensymbol = @"tokensymbol_example"; // Token symbol

NEBLNTP1Api*apiInstance = [[NEBLNTP1Api alloc] init];

// Returns the tokenId representing a token
[apiInstance getTokenIdWithTokensymbol:tokensymbol
          completionHandler: ^(NEBLGetTokenIdResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NEBLNTP1Api->getTokenId: %@", error);
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

# **getTokenMetadata**
```objc
-(NSURLSessionTask*) getTokenMetadataWithTokenid: (NSString*) tokenid
        completionHandler: (void (^)(NEBLGetTokenMetadataResponse* output, NSError* error)) handler;
```

Get Metadata of Token

Returns the metadata associated with a token. 

### Example 
```objc

NSString* tokenid = @"tokenid_example"; // TokenId to request metadata for

NEBLNTP1Api*apiInstance = [[NEBLNTP1Api alloc] init];

// Get Metadata of Token
[apiInstance getTokenMetadataWithTokenid:tokenid
          completionHandler: ^(NEBLGetTokenMetadataResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NEBLNTP1Api->getTokenMetadata: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenid** | **NSString***| TokenId to request metadata for | 

### Return type

[**NEBLGetTokenMetadataResponse***](NEBLGetTokenMetadataResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTokenMetadataOfUtxo**
```objc
-(NSURLSessionTask*) getTokenMetadataOfUtxoWithTokenid: (NSString*) tokenid
    utxo: (NSString*) utxo
        completionHandler: (void (^)(NEBLGetTokenMetadataResponse* output, NSError* error)) handler;
```

Get UTXO Metadata of Token

Returns the metadata associated with a token for that specific utxo instead of the issuance transaction. 

### Example 
```objc

NSString* tokenid = @"tokenid_example"; // TokenId to request metadata for
NSString* utxo = @"utxo_example"; // Specific UTXO to request metadata for

NEBLNTP1Api*apiInstance = [[NEBLNTP1Api alloc] init];

// Get UTXO Metadata of Token
[apiInstance getTokenMetadataOfUtxoWithTokenid:tokenid
              utxo:utxo
          completionHandler: ^(NEBLGetTokenMetadataResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NEBLNTP1Api->getTokenMetadataOfUtxo: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokenid** | **NSString***| TokenId to request metadata for | 
 **utxo** | **NSString***| Specific UTXO to request metadata for | 

### Return type

[**NEBLGetTokenMetadataResponse***](NEBLGetTokenMetadataResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTransactionInfo**
```objc
-(NSURLSessionTask*) getTransactionInfoWithTxid: (NSString*) txid
        completionHandler: (void (^)(NEBLGetTransactionInfoResponse* output, NSError* error)) handler;
```

Information On an NTP1 Transaction

Returns detailed information regarding an NTP1 transaction. 

### Example 
```objc

NSString* txid = @"txid_example"; // Neblio txid to get information on.

NEBLNTP1Api*apiInstance = [[NEBLNTP1Api alloc] init];

// Information On an NTP1 Transaction
[apiInstance getTransactionInfoWithTxid:txid
          completionHandler: ^(NEBLGetTransactionInfoResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NEBLNTP1Api->getTransactionInfo: %@", error);
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

# **issueToken**
```objc
-(NSURLSessionTask*) issueTokenWithIssueTokenRequest: (NEBLIssueTokenRequest*) issueTokenRequest
        completionHandler: (void (^)(NEBLIssueTokenResponse* output, NSError* error)) handler;
```

Builds a transaction that issues a new NTP1 Token

Builds an unsigned raw transaction that issues a new NTP1 token on the Neblio blockchain. 

### Example 
```objc

NEBLIssueTokenRequest* issueTokenRequest = [[NEBLIssueTokenRequest alloc] init]; // Object representing the token to be created

NEBLNTP1Api*apiInstance = [[NEBLNTP1Api alloc] init];

// Builds a transaction that issues a new NTP1 Token
[apiInstance issueTokenWithIssueTokenRequest:issueTokenRequest
          completionHandler: ^(NEBLIssueTokenResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NEBLNTP1Api->issueToken: %@", error);
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

# **sendToken**
```objc
-(NSURLSessionTask*) sendTokenWithSendTokenRequest: (NEBLSendTokenRequest*) sendTokenRequest
        completionHandler: (void (^)(NEBLSendTokenResponse* output, NSError* error)) handler;
```

Builds a transaction that sends an NTP1 Token

Builds an unsigned raw transaction that sends an NTP1 token on the Neblio blockchain. 

### Example 
```objc

NEBLSendTokenRequest* sendTokenRequest = [[NEBLSendTokenRequest alloc] init]; // Object representing the token to be sent

NEBLNTP1Api*apiInstance = [[NEBLNTP1Api alloc] init];

// Builds a transaction that sends an NTP1 Token
[apiInstance sendTokenWithSendTokenRequest:sendTokenRequest
          completionHandler: ^(NEBLSendTokenResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NEBLNTP1Api->sendToken: %@", error);
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

