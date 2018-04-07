# SWGNTP1Api

All URIs are relative to *https://ntp1node.nebl.io:1443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**broadcastTx**](SWGNTP1Api.md#broadcasttx) | **POST** /ntp1/broadcast | Broadcasts a signed raw transaction to the network
[**burnToken**](SWGNTP1Api.md#burntoken) | **POST** /ntp1/burntoken | Builds a transaction that burns an NTP1 Token
[**getAddressInfo**](SWGNTP1Api.md#getaddressinfo) | **GET** /ntp1/addressinfo/{address} | Information On a Neblio Address
[**getTokenHolders**](SWGNTP1Api.md#gettokenholders) | **GET** /ntp1/stakeholders/{tokenid} | Get Addresses Holding a Token
[**getTokenId**](SWGNTP1Api.md#gettokenid) | **GET** /ntp1/tokenid/{tokensymbol} | Returns the tokenId representing a token
[**getTokenMetadataOfIssuance**](SWGNTP1Api.md#gettokenmetadataofissuance) | **GET** /ntp1/tokenmetadata/{tokenid} | Get Issuance Metadata of Token
[**getTokenMetadataOfUtxo**](SWGNTP1Api.md#gettokenmetadataofutxo) | **GET** /ntp1/tokenmetadata/{tokenid}/{utxo} | Get UTXO Metadata of Token
[**issueToken**](SWGNTP1Api.md#issuetoken) | **POST** /ntp1/issue | Builds a transaction that issues a new NTP1 Token
[**sendToken**](SWGNTP1Api.md#sendtoken) | **POST** /ntp1/sendtoken | Builds a transaction that sends an NTP1 Token


# **broadcastTx**
```objc
-(NSURLSessionTask*) broadcastTxWithBody: (SWGBroadcastTxRequest*) body
        completionHandler: (void (^)(SWGBroadcastTxResponse* output, NSError* error)) handler;
```

Broadcasts a signed raw transaction to the network

Broadcasts a signed raw transaction to the network. If successful returns the txid of the broadcast trasnaction. 

### Example 
```objc

SWGBroadcastTxRequest* body = [[SWGBroadcastTxRequest alloc] init]; // Object representing a transaction to broadcast

SWGNTP1Api*apiInstance = [[SWGNTP1Api alloc] init];

// Broadcasts a signed raw transaction to the network
[apiInstance broadcastTxWithBody:body
          completionHandler: ^(SWGBroadcastTxResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGNTP1Api->broadcastTx: %@", error);
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

# **burnToken**
```objc
-(NSURLSessionTask*) burnTokenWithBody: (SWGBurnTokenRequest*) body
        completionHandler: (void (^)(SWGBurnTokenResponse* output, NSError* error)) handler;
```

Builds a transaction that burns an NTP1 Token

Builds an unsigned raw transaction that burns an NTP1 token on the Neblio blockchain. 

### Example 
```objc

SWGBurnTokenRequest* body = [[SWGBurnTokenRequest alloc] init]; // Object representing the token to be burned

SWGNTP1Api*apiInstance = [[SWGNTP1Api alloc] init];

// Builds a transaction that burns an NTP1 Token
[apiInstance burnTokenWithBody:body
          completionHandler: ^(SWGBurnTokenResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGNTP1Api->burnToken: %@", error);
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

# **getAddressInfo**
```objc
-(NSURLSessionTask*) getAddressInfoWithAddress: (NSString*) address
        completionHandler: (void (^)(SWGGetAddressInfoResponse* output, NSError* error)) handler;
```

Information On a Neblio Address

Returns both NEBL and NTP1 token UTXOs held at the given address. 

### Example 
```objc

NSString* address = @"address_example"; // Neblio Address to get information on.

SWGNTP1Api*apiInstance = [[SWGNTP1Api alloc] init];

// Information On a Neblio Address
[apiInstance getAddressInfoWithAddress:address
          completionHandler: ^(SWGGetAddressInfoResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGNTP1Api->getAddressInfo: %@", error);
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

# **getTokenHolders**
```objc
-(NSURLSessionTask*) getTokenHoldersWithTokenid: (NSString*) tokenid
        completionHandler: (void (^)(SWGGetTokenHoldersResponse* output, NSError* error)) handler;
```

Get Addresses Holding a Token

Returns the the the addresses holding a token and how many tokens are held 

### Example 
```objc

NSString* tokenid = @"tokenid_example"; // TokenId to request metadata for

SWGNTP1Api*apiInstance = [[SWGNTP1Api alloc] init];

// Get Addresses Holding a Token
[apiInstance getTokenHoldersWithTokenid:tokenid
          completionHandler: ^(SWGGetTokenHoldersResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGNTP1Api->getTokenHolders: %@", error);
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

# **getTokenId**
```objc
-(NSURLSessionTask*) getTokenIdWithTokensymbol: (NSString*) tokensymbol
        completionHandler: (void (^)(SWGGetTokenIdResponse* output, NSError* error)) handler;
```

Returns the tokenId representing a token

Translates a token symbol to a tokenId if a token exists with that symbol on the network 

### Example 
```objc

NSString* tokensymbol = @"tokensymbol_example"; // Token symbol

SWGNTP1Api*apiInstance = [[SWGNTP1Api alloc] init];

// Returns the tokenId representing a token
[apiInstance getTokenIdWithTokensymbol:tokensymbol
          completionHandler: ^(SWGGetTokenIdResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGNTP1Api->getTokenId: %@", error);
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

# **getTokenMetadataOfIssuance**
```objc
-(NSURLSessionTask*) getTokenMetadataOfIssuanceWithTokenid: (NSString*) tokenid
        completionHandler: (void (^)(SWGGetTokenMetadataResponse* output, NSError* error)) handler;
```

Get Issuance Metadata of Token

Returns the metadata associated with a token at time of issuance.  

### Example 
```objc

NSString* tokenid = @"tokenid_example"; // TokenId to request metadata for

SWGNTP1Api*apiInstance = [[SWGNTP1Api alloc] init];

// Get Issuance Metadata of Token
[apiInstance getTokenMetadataOfIssuanceWithTokenid:tokenid
          completionHandler: ^(SWGGetTokenMetadataResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGNTP1Api->getTokenMetadataOfIssuance: %@", error);
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

# **getTokenMetadataOfUtxo**
```objc
-(NSURLSessionTask*) getTokenMetadataOfUtxoWithTokenid: (NSString*) tokenid
    utxo: (NSString*) utxo
        completionHandler: (void (^)(SWGGetTokenMetadataResponse* output, NSError* error)) handler;
```

Get UTXO Metadata of Token

Returns the metadata associated with a token for that specific utxo instead of the issuance transaction. 

### Example 
```objc

NSString* tokenid = @"tokenid_example"; // TokenId to request metadata for
NSString* utxo = @"utxo_example"; // Specific UTXO to request metadata for

SWGNTP1Api*apiInstance = [[SWGNTP1Api alloc] init];

// Get UTXO Metadata of Token
[apiInstance getTokenMetadataOfUtxoWithTokenid:tokenid
              utxo:utxo
          completionHandler: ^(SWGGetTokenMetadataResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGNTP1Api->getTokenMetadataOfUtxo: %@", error);
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

# **issueToken**
```objc
-(NSURLSessionTask*) issueTokenWithBody: (SWGIssueTokenRequest*) body
        completionHandler: (void (^)(SWGIssueTokenResponse* output, NSError* error)) handler;
```

Builds a transaction that issues a new NTP1 Token

Builds an unsigned raw transaction that issues a new NTP1 token on the Neblio blockchain. 

### Example 
```objc

SWGIssueTokenRequest* body = [[SWGIssueTokenRequest alloc] init]; // Object representing the token to be created

SWGNTP1Api*apiInstance = [[SWGNTP1Api alloc] init];

// Builds a transaction that issues a new NTP1 Token
[apiInstance issueTokenWithBody:body
          completionHandler: ^(SWGIssueTokenResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGNTP1Api->issueToken: %@", error);
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

# **sendToken**
```objc
-(NSURLSessionTask*) sendTokenWithBody: (SWGSendTokenRequest*) body
        completionHandler: (void (^)(SWGSendTokenResponse* output, NSError* error)) handler;
```

Builds a transaction that sends an NTP1 Token

Builds an unsigned raw transaction that sends an NTP1 token on the Neblio blockchain. 

### Example 
```objc

SWGSendTokenRequest* body = [[SWGSendTokenRequest alloc] init]; // Object representing the token to be sent

SWGNTP1Api*apiInstance = [[SWGNTP1Api alloc] init];

// Builds a transaction that sends an NTP1 Token
[apiInstance sendTokenWithBody:body
          completionHandler: ^(SWGSendTokenResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGNTP1Api->sendToken: %@", error);
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

