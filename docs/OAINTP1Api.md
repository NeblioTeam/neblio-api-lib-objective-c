# OAINTP1Api

All URIs are relative to *https://ntp1node.nebl.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**broadcastTx**](OAINTP1Api.md#broadcasttx) | **POST** /ntp1/broadcast | Broadcasts a signed raw transaction to the network
[**burnToken**](OAINTP1Api.md#burntoken) | **POST** /ntp1/burntoken | Builds a transaction that burns an NTP1 Token
[**getAddressInfo**](OAINTP1Api.md#getaddressinfo) | **GET** /ntp1/addressinfo/{address} | Information On a Neblio Address
[**getTokenHolders**](OAINTP1Api.md#gettokenholders) | **GET** /ntp1/stakeholders/{tokenid} | Get Addresses Holding a Token
[**getTokenId**](OAINTP1Api.md#gettokenid) | **GET** /ntp1/tokenid/{tokensymbol} | Returns the tokenId representing a token
[**getTokenMetadataOfIssuance**](OAINTP1Api.md#gettokenmetadataofissuance) | **GET** /ntp1/tokenmetadata/{tokenid} | Get Issuance Metadata of Token
[**getTokenMetadataOfUtxo**](OAINTP1Api.md#gettokenmetadataofutxo) | **GET** /ntp1/tokenmetadata/{tokenid}/{utxo} | Get UTXO Metadata of Token
[**getTransactionInfo**](OAINTP1Api.md#gettransactioninfo) | **GET** /ntp1/transactioninfo/{txid} | Information On an NTP1 Transaction
[**issueToken**](OAINTP1Api.md#issuetoken) | **POST** /ntp1/issue | Builds a transaction that issues a new NTP1 Token
[**sendToken**](OAINTP1Api.md#sendtoken) | **POST** /ntp1/sendtoken | Builds a transaction that sends an NTP1 Token


# **broadcastTx**
```objc
-(NSURLSessionTask*) broadcastTxWithBroadcastTxRequest: (OAIBroadcastTxRequest*) broadcastTxRequest
        completionHandler: (void (^)(OAIBroadcastTxResponse* output, NSError* error)) handler;
```

Broadcasts a signed raw transaction to the network

Broadcasts a signed raw transaction to the network. If successful returns the txid of the broadcast trasnaction. 

### Example 
```objc

OAIBroadcastTxRequest* broadcastTxRequest = [[OAIBroadcastTxRequest alloc] init]; // Object representing a transaction to broadcast

OAINTP1Api*apiInstance = [[OAINTP1Api alloc] init];

// Broadcasts a signed raw transaction to the network
[apiInstance broadcastTxWithBroadcastTxRequest:broadcastTxRequest
          completionHandler: ^(OAIBroadcastTxResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAINTP1Api->broadcastTx: %@", error);
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

# **burnToken**
```objc
-(NSURLSessionTask*) burnTokenWithBurnTokenRequest: (OAIBurnTokenRequest*) burnTokenRequest
        completionHandler: (void (^)(OAIBurnTokenResponse* output, NSError* error)) handler;
```

Builds a transaction that burns an NTP1 Token

Builds an unsigned raw transaction that burns an NTP1 token on the Neblio blockchain. 

### Example 
```objc

OAIBurnTokenRequest* burnTokenRequest = [[OAIBurnTokenRequest alloc] init]; // Object representing the token to be burned

OAINTP1Api*apiInstance = [[OAINTP1Api alloc] init];

// Builds a transaction that burns an NTP1 Token
[apiInstance burnTokenWithBurnTokenRequest:burnTokenRequest
          completionHandler: ^(OAIBurnTokenResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAINTP1Api->burnToken: %@", error);
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

# **getAddressInfo**
```objc
-(NSURLSessionTask*) getAddressInfoWithAddress: (NSString*) address
        completionHandler: (void (^)(OAIGetAddressInfoResponse* output, NSError* error)) handler;
```

Information On a Neblio Address

Returns both NEBL and NTP1 token UTXOs held at the given address. 

### Example 
```objc

NSString* address = @"address_example"; // Neblio Address to get information on.

OAINTP1Api*apiInstance = [[OAINTP1Api alloc] init];

// Information On a Neblio Address
[apiInstance getAddressInfoWithAddress:address
          completionHandler: ^(OAIGetAddressInfoResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAINTP1Api->getAddressInfo: %@", error);
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

# **getTokenHolders**
```objc
-(NSURLSessionTask*) getTokenHoldersWithTokenid: (NSString*) tokenid
        completionHandler: (void (^)(OAIGetTokenHoldersResponse* output, NSError* error)) handler;
```

Get Addresses Holding a Token

Returns the the the addresses holding a token and how many tokens are held 

### Example 
```objc

NSString* tokenid = @"tokenid_example"; // TokenId to request metadata for

OAINTP1Api*apiInstance = [[OAINTP1Api alloc] init];

// Get Addresses Holding a Token
[apiInstance getTokenHoldersWithTokenid:tokenid
          completionHandler: ^(OAIGetTokenHoldersResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAINTP1Api->getTokenHolders: %@", error);
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

# **getTokenId**
```objc
-(NSURLSessionTask*) getTokenIdWithTokensymbol: (NSString*) tokensymbol
        completionHandler: (void (^)(OAIGetTokenIdResponse* output, NSError* error)) handler;
```

Returns the tokenId representing a token

Translates a token symbol to a tokenId if a token exists with that symbol on the network 

### Example 
```objc

NSString* tokensymbol = @"tokensymbol_example"; // Token symbol

OAINTP1Api*apiInstance = [[OAINTP1Api alloc] init];

// Returns the tokenId representing a token
[apiInstance getTokenIdWithTokensymbol:tokensymbol
          completionHandler: ^(OAIGetTokenIdResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAINTP1Api->getTokenId: %@", error);
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

# **getTokenMetadataOfIssuance**
```objc
-(NSURLSessionTask*) getTokenMetadataOfIssuanceWithTokenid: (NSString*) tokenid
        completionHandler: (void (^)(OAIGetTokenMetadataResponse* output, NSError* error)) handler;
```

Get Issuance Metadata of Token

Returns the metadata associated with a token at time of issuance. 

### Example 
```objc

NSString* tokenid = @"tokenid_example"; // TokenId to request metadata for

OAINTP1Api*apiInstance = [[OAINTP1Api alloc] init];

// Get Issuance Metadata of Token
[apiInstance getTokenMetadataOfIssuanceWithTokenid:tokenid
          completionHandler: ^(OAIGetTokenMetadataResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAINTP1Api->getTokenMetadataOfIssuance: %@", error);
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

# **getTokenMetadataOfUtxo**
```objc
-(NSURLSessionTask*) getTokenMetadataOfUtxoWithTokenid: (NSString*) tokenid
    utxo: (NSString*) utxo
        completionHandler: (void (^)(OAIGetTokenMetadataResponse* output, NSError* error)) handler;
```

Get UTXO Metadata of Token

Returns the metadata associated with a token for that specific utxo instead of the issuance transaction. 

### Example 
```objc

NSString* tokenid = @"tokenid_example"; // TokenId to request metadata for
NSString* utxo = @"utxo_example"; // Specific UTXO to request metadata for

OAINTP1Api*apiInstance = [[OAINTP1Api alloc] init];

// Get UTXO Metadata of Token
[apiInstance getTokenMetadataOfUtxoWithTokenid:tokenid
              utxo:utxo
          completionHandler: ^(OAIGetTokenMetadataResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAINTP1Api->getTokenMetadataOfUtxo: %@", error);
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

# **getTransactionInfo**
```objc
-(NSURLSessionTask*) getTransactionInfoWithTxid: (NSString*) txid
        completionHandler: (void (^)(OAIGetTransactionInfoResponse* output, NSError* error)) handler;
```

Information On an NTP1 Transaction

Returns detailed information regarding an NTP1 transaction. 

### Example 
```objc

NSString* txid = @"txid_example"; // Neblio txid to get information on.

OAINTP1Api*apiInstance = [[OAINTP1Api alloc] init];

// Information On an NTP1 Transaction
[apiInstance getTransactionInfoWithTxid:txid
          completionHandler: ^(OAIGetTransactionInfoResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAINTP1Api->getTransactionInfo: %@", error);
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

# **issueToken**
```objc
-(NSURLSessionTask*) issueTokenWithIssueTokenRequest: (OAIIssueTokenRequest*) issueTokenRequest
        completionHandler: (void (^)(OAIIssueTokenResponse* output, NSError* error)) handler;
```

Builds a transaction that issues a new NTP1 Token

Builds an unsigned raw transaction that issues a new NTP1 token on the Neblio blockchain. 

### Example 
```objc

OAIIssueTokenRequest* issueTokenRequest = [[OAIIssueTokenRequest alloc] init]; // Object representing the token to be created

OAINTP1Api*apiInstance = [[OAINTP1Api alloc] init];

// Builds a transaction that issues a new NTP1 Token
[apiInstance issueTokenWithIssueTokenRequest:issueTokenRequest
          completionHandler: ^(OAIIssueTokenResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAINTP1Api->issueToken: %@", error);
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

# **sendToken**
```objc
-(NSURLSessionTask*) sendTokenWithSendTokenRequest: (OAISendTokenRequest*) sendTokenRequest
        completionHandler: (void (^)(OAISendTokenResponse* output, NSError* error)) handler;
```

Builds a transaction that sends an NTP1 Token

Builds an unsigned raw transaction that sends an NTP1 token on the Neblio blockchain. 

### Example 
```objc

OAISendTokenRequest* sendTokenRequest = [[OAISendTokenRequest alloc] init]; // Object representing the token to be sent

OAINTP1Api*apiInstance = [[OAINTP1Api alloc] init];

// Builds a transaction that sends an NTP1 Token
[apiInstance sendTokenWithSendTokenRequest:sendTokenRequest
          completionHandler: ^(OAISendTokenResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAINTP1Api->sendToken: %@", error);
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

