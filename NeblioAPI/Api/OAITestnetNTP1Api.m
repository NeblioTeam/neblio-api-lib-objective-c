#import "OAITestnetNTP1Api.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIBroadcastTxRequest.h"
#import "OAIBroadcastTxResponse.h"
#import "OAIBurnTokenRequest.h"
#import "OAIBurnTokenResponse.h"
#import "OAIError.h"
#import "OAIGetAddressInfoResponse.h"
#import "OAIGetTokenHoldersResponse.h"
#import "OAIGetTokenIdResponse.h"
#import "OAIGetTokenMetadataResponse.h"
#import "OAIGetTransactionInfoResponse.h"
#import "OAIIssueTokenRequest.h"
#import "OAIIssueTokenResponse.h"
#import "OAISendTokenRequest.h"
#import "OAISendTokenResponse.h"


@interface OAITestnetNTP1Api ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAITestnetNTP1Api

NSString* kOAITestnetNTP1ApiErrorDomain = @"OAITestnetNTP1ApiErrorDomain";
NSInteger kOAITestnetNTP1ApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[OAIApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(OAIApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Broadcasts a signed raw transaction to the network
/// Broadcasts a signed raw transaction to the network. If successful returns the txid of the broadcast trasnaction. 
///  @param broadcastTxRequest Object representing a transaction to broadcast 
///
///  @returns OAIBroadcastTxResponse*
///
-(NSURLSessionTask*) testnetBroadcastTxWithBroadcastTxRequest: (OAIBroadcastTxRequest*) broadcastTxRequest
    completionHandler: (void (^)(OAIBroadcastTxResponse* output, NSError* error)) handler {
    // verify the required parameter 'broadcastTxRequest' is set
    if (broadcastTxRequest == nil) {
        NSParameterAssert(broadcastTxRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"broadcastTxRequest"] };
            NSError* error = [NSError errorWithDomain:kOAITestnetNTP1ApiErrorDomain code:kOAITestnetNTP1ApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/testnet/ntp1/broadcast"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = broadcastTxRequest;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIBroadcastTxResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIBroadcastTxResponse*)data, error);
                                }
                            }];
}

///
/// Builds a transaction that burns an NTP1 Token
/// Builds an unsigned raw transaction that burns an NTP1 token on the Neblio blockchain. 
///  @param burnTokenRequest Object representing the token to be burned 
///
///  @returns OAIBurnTokenResponse*
///
-(NSURLSessionTask*) testnetBurnTokenWithBurnTokenRequest: (OAIBurnTokenRequest*) burnTokenRequest
    completionHandler: (void (^)(OAIBurnTokenResponse* output, NSError* error)) handler {
    // verify the required parameter 'burnTokenRequest' is set
    if (burnTokenRequest == nil) {
        NSParameterAssert(burnTokenRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"burnTokenRequest"] };
            NSError* error = [NSError errorWithDomain:kOAITestnetNTP1ApiErrorDomain code:kOAITestnetNTP1ApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/testnet/ntp1/burntoken"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = burnTokenRequest;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIBurnTokenResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIBurnTokenResponse*)data, error);
                                }
                            }];
}

///
/// Information On a Neblio Address
/// Returns both NEBL and NTP1 token UTXOs held at the given address. 
///  @param address Neblio Address to get information on. 
///
///  @returns OAIGetAddressInfoResponse*
///
-(NSURLSessionTask*) testnetGetAddressInfoWithAddress: (NSString*) address
    completionHandler: (void (^)(OAIGetAddressInfoResponse* output, NSError* error)) handler {
    // verify the required parameter 'address' is set
    if (address == nil) {
        NSParameterAssert(address);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"address"] };
            NSError* error = [NSError errorWithDomain:kOAITestnetNTP1ApiErrorDomain code:kOAITestnetNTP1ApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/testnet/ntp1/addressinfo/{address}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (address != nil) {
        pathParams[@"address"] = address;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIGetAddressInfoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGetAddressInfoResponse*)data, error);
                                }
                            }];
}

///
/// Get Addresses Holding a Token
/// Returns the the the addresses holding a token and how many tokens are held 
///  @param tokenid TokenId to request metadata for 
///
///  @returns OAIGetTokenHoldersResponse*
///
-(NSURLSessionTask*) testnetGetTokenHoldersWithTokenid: (NSString*) tokenid
    completionHandler: (void (^)(OAIGetTokenHoldersResponse* output, NSError* error)) handler {
    // verify the required parameter 'tokenid' is set
    if (tokenid == nil) {
        NSParameterAssert(tokenid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"tokenid"] };
            NSError* error = [NSError errorWithDomain:kOAITestnetNTP1ApiErrorDomain code:kOAITestnetNTP1ApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/testnet/ntp1/stakeholders/{tokenid}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (tokenid != nil) {
        pathParams[@"tokenid"] = tokenid;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIGetTokenHoldersResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGetTokenHoldersResponse*)data, error);
                                }
                            }];
}

///
/// Returns the tokenId representing a token
/// Translates a token symbol to a tokenId if a token exists with that symbol on the network 
///  @param tokensymbol Token symbol 
///
///  @returns OAIGetTokenIdResponse*
///
-(NSURLSessionTask*) testnetGetTokenIdWithTokensymbol: (NSString*) tokensymbol
    completionHandler: (void (^)(OAIGetTokenIdResponse* output, NSError* error)) handler {
    // verify the required parameter 'tokensymbol' is set
    if (tokensymbol == nil) {
        NSParameterAssert(tokensymbol);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"tokensymbol"] };
            NSError* error = [NSError errorWithDomain:kOAITestnetNTP1ApiErrorDomain code:kOAITestnetNTP1ApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/testnet/ntp1/tokenid/{tokensymbol}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (tokensymbol != nil) {
        pathParams[@"tokensymbol"] = tokensymbol;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIGetTokenIdResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGetTokenIdResponse*)data, error);
                                }
                            }];
}

///
/// Get Issuance Metadata of Token
/// Returns the metadata associated with a token at time of issuance. 
///  @param tokenid TokenId to request metadata for 
///
///  @returns OAIGetTokenMetadataResponse*
///
-(NSURLSessionTask*) testnetGetTokenMetadataOfIssuanceWithTokenid: (NSString*) tokenid
    completionHandler: (void (^)(OAIGetTokenMetadataResponse* output, NSError* error)) handler {
    // verify the required parameter 'tokenid' is set
    if (tokenid == nil) {
        NSParameterAssert(tokenid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"tokenid"] };
            NSError* error = [NSError errorWithDomain:kOAITestnetNTP1ApiErrorDomain code:kOAITestnetNTP1ApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/testnet/ntp1/tokenmetadata/{tokenid}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (tokenid != nil) {
        pathParams[@"tokenid"] = tokenid;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIGetTokenMetadataResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGetTokenMetadataResponse*)data, error);
                                }
                            }];
}

///
/// Get UTXO Metadata of Token
/// Returns the metadata associated with a token for that specific utxo instead of the issuance transaction. 
///  @param tokenid TokenId to request metadata for 
///
///  @param utxo Specific UTXO to request metadata for 
///
///  @returns OAIGetTokenMetadataResponse*
///
-(NSURLSessionTask*) testnetGetTokenMetadataOfUtxoWithTokenid: (NSString*) tokenid
    utxo: (NSString*) utxo
    completionHandler: (void (^)(OAIGetTokenMetadataResponse* output, NSError* error)) handler {
    // verify the required parameter 'tokenid' is set
    if (tokenid == nil) {
        NSParameterAssert(tokenid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"tokenid"] };
            NSError* error = [NSError errorWithDomain:kOAITestnetNTP1ApiErrorDomain code:kOAITestnetNTP1ApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'utxo' is set
    if (utxo == nil) {
        NSParameterAssert(utxo);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"utxo"] };
            NSError* error = [NSError errorWithDomain:kOAITestnetNTP1ApiErrorDomain code:kOAITestnetNTP1ApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/testnet/ntp1/tokenmetadata/{tokenid}/{utxo}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (tokenid != nil) {
        pathParams[@"tokenid"] = tokenid;
    }
    if (utxo != nil) {
        pathParams[@"utxo"] = utxo;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIGetTokenMetadataResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGetTokenMetadataResponse*)data, error);
                                }
                            }];
}

///
/// Information On an NTP1 Transaction
/// Returns detailed information regarding an NTP1 transaction. 
///  @param txid Neblio txid to get information on. 
///
///  @returns OAIGetTransactionInfoResponse*
///
-(NSURLSessionTask*) testnetGetTransactionInfoWithTxid: (NSString*) txid
    completionHandler: (void (^)(OAIGetTransactionInfoResponse* output, NSError* error)) handler {
    // verify the required parameter 'txid' is set
    if (txid == nil) {
        NSParameterAssert(txid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"txid"] };
            NSError* error = [NSError errorWithDomain:kOAITestnetNTP1ApiErrorDomain code:kOAITestnetNTP1ApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/testnet/ntp1/transactioninfo/{txid}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (txid != nil) {
        pathParams[@"txid"] = txid;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIGetTransactionInfoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGetTransactionInfoResponse*)data, error);
                                }
                            }];
}

///
/// Builds a transaction that issues a new NTP1 Token
/// Builds an unsigned raw transaction that issues a new NTP1 token on the Neblio blockchain. 
///  @param issueTokenRequest Object representing the token to be created 
///
///  @returns OAIIssueTokenResponse*
///
-(NSURLSessionTask*) testnetIssueTokenWithIssueTokenRequest: (OAIIssueTokenRequest*) issueTokenRequest
    completionHandler: (void (^)(OAIIssueTokenResponse* output, NSError* error)) handler {
    // verify the required parameter 'issueTokenRequest' is set
    if (issueTokenRequest == nil) {
        NSParameterAssert(issueTokenRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"issueTokenRequest"] };
            NSError* error = [NSError errorWithDomain:kOAITestnetNTP1ApiErrorDomain code:kOAITestnetNTP1ApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/testnet/ntp1/issue"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = issueTokenRequest;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIIssueTokenResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIIssueTokenResponse*)data, error);
                                }
                            }];
}

///
/// Builds a transaction that sends an NTP1 Token
/// Builds an unsigned raw transaction that sends an NTP1 token on the Neblio blockchain. 
///  @param sendTokenRequest Object representing the token to be sent 
///
///  @returns OAISendTokenResponse*
///
-(NSURLSessionTask*) testnetSendTokenWithSendTokenRequest: (OAISendTokenRequest*) sendTokenRequest
    completionHandler: (void (^)(OAISendTokenResponse* output, NSError* error)) handler {
    // verify the required parameter 'sendTokenRequest' is set
    if (sendTokenRequest == nil) {
        NSParameterAssert(sendTokenRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sendTokenRequest"] };
            NSError* error = [NSError errorWithDomain:kOAITestnetNTP1ApiErrorDomain code:kOAITestnetNTP1ApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/testnet/ntp1/sendtoken"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = sendTokenRequest;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAISendTokenResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAISendTokenResponse*)data, error);
                                }
                            }];
}



@end
