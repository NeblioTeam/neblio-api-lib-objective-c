# NEBLJSONRPCApi

All URIs are relative to *https://ntp1node.nebl.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**jsonRpc**](NEBLJSONRPCApi.md#jsonrpc) | **POST** / | Send a JSON-RPC call to a localhost neblio-Qt or nebliod node


# **jsonRpc**
```objc
-(NSURLSessionTask*) jsonRpcWithRpcRequest: (NEBLRpcRequest*) rpcRequest
        completionHandler: (void (^)(NEBLRpcResponse* output, NSError* error)) handler;
```

Send a JSON-RPC call to a localhost neblio-Qt or nebliod node

Call any Neblio RPC command from the Neblio API libraries. Useful for signing transactions with a local node and other functions. Will not work from a browser due to CORS restrictions. Requires a node to be running locally at 127.0.0.1

### Example 
```objc
NEBLDefaultConfiguration *apiConfig = [NEBLDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: rpcAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


NEBLRpcRequest* rpcRequest = [[NEBLRpcRequest alloc] init]; // 

NEBLJSONRPCApi*apiInstance = [[NEBLJSONRPCApi alloc] init];

// Send a JSON-RPC call to a localhost neblio-Qt or nebliod node
[apiInstance jsonRpcWithRpcRequest:rpcRequest
          completionHandler: ^(NEBLRpcResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NEBLJSONRPCApi->jsonRpc: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rpcRequest** | [**NEBLRpcRequest***](NEBLRpcRequest.md)|  | 

### Return type

[**NEBLRpcResponse***](NEBLRpcResponse.md)

### Authorization

[rpcAuth](../README.md#rpcAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

