# OAITestnetFaucetApi

All URIs are relative to *https://ntp1node.nebl.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**testnetGetFaucet**](OAITestnetFaucetApi.md#testnetgetfaucet) | **GET** /testnet/faucet | Withdraws testnet NEBL to the specified address


# **testnetGetFaucet**
```objc
-(NSURLSessionTask*) testnetGetFaucetWithAddress: (NSString*) address
    amount: (NSNumber*) amount
        completionHandler: (void (^)(OAIGetFaucetResponse* output, NSError* error)) handler;
```

Withdraws testnet NEBL to the specified address

Withdraw testnet NEBL to your Neblio Testnet address. By default amount is 1500000000 or 15 NEBL and has a max of 50 NEBL. Only 2 withdrawals allowed per 24 hour period. 

### Example 
```objc

NSString* address = @"address_example"; // Your Neblio Testnet Address
NSNumber* amount = @56; // Amount of NEBL to withdrawal in satoshis (optional)

OAITestnetFaucetApi*apiInstance = [[OAITestnetFaucetApi alloc] init];

// Withdraws testnet NEBL to the specified address
[apiInstance testnetGetFaucetWithAddress:address
              amount:amount
          completionHandler: ^(OAIGetFaucetResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAITestnetFaucetApi->testnetGetFaucet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| Your Neblio Testnet Address | 
 **amount** | **NSNumber***| Amount of NEBL to withdrawal in satoshis | [optional] 

### Return type

[**OAIGetFaucetResponse***](OAIGetFaucetResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

