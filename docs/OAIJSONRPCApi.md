# OAIJSONRPCApi

All URIs are relative to *https://ntp1node.nebl.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**jsonRpc**](OAIJSONRPCApi.md#jsonrpc) | **POST** / | Send a JSON-RPC call to a localhost neblio-Qt or nebliod node


# **jsonRpc**
```objc
-(NSURLSessionTask*) jsonRpcWithRpcRequest: (OAIRpcRequest*) rpcRequest
        completionHandler: (void (^)(OAIRpcResponse* output, NSError* error)) handler;
```

Send a JSON-RPC call to a localhost neblio-Qt or nebliod node

Call any Neblio RPC command from the Neblio API libraries. Useful for signing transactions with a local node and other functions. Will not work from a browser due to CORS restrictions. Requires a node to be running locally at 127.0.0.1

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];
// Configure HTTP basic authorization (authentication scheme: rpcAuth)
[apiConfig setUsername:@"YOUR_USERNAME"];
[apiConfig setPassword:@"YOUR_PASSWORD"];


OAIRpcRequest* rpcRequest = [[OAIRpcRequest alloc] init]; // 

OAIJSONRPCApi*apiInstance = [[OAIJSONRPCApi alloc] init];

// Send a JSON-RPC call to a localhost neblio-Qt or nebliod node
[apiInstance jsonRpcWithRpcRequest:rpcRequest
          completionHandler: ^(OAIRpcResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIJSONRPCApi->jsonRpc: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rpcRequest** | [**OAIRpcRequest***](OAIRpcRequest.md)|  | 

### Return type

[**OAIRpcResponse***](OAIRpcResponse.md)

### Authorization

[rpcAuth](../README.md#rpcAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

