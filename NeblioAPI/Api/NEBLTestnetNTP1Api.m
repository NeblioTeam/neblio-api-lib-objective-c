#import "NEBLTestnetNTP1Api.h"
#import "NEBLQueryParamCollection.h"
#import "NEBLApiClient.h"
#import "NEBLBroadcastTxRequest.h"
#import "NEBLBroadcastTxResponse.h"
#import "NEBLBurnTokenRequest.h"
#import "NEBLBurnTokenResponse.h"
#import "NEBLError.h"
#import "NEBLGetAddressInfoResponse.h"
#import "NEBLGetTokenHoldersResponse.h"
#import "NEBLGetTokenIdResponse.h"
#import "NEBLGetTokenMetadataResponse.h"
#import "NEBLGetTransactionInfoResponse.h"
#import "NEBLIssueTokenRequest.h"
#import "NEBLIssueTokenResponse.h"
#import "NEBLSendTokenRequest.h"
#import "NEBLSendTokenResponse.h"


@interface NEBLTestnetNTP1Api ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation NEBLTestnetNTP1Api

NSString* kNEBLTestnetNTP1ApiErrorDomain = @"NEBLTestnetNTP1ApiErrorDomain";
NSInteger kNEBLTestnetNTP1ApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[NEBLApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(NEBLApiClient *)apiClient {
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
///  @returns NEBLBroadcastTxResponse*
///
-(NSURLSessionTask*) testnetBroadcastTxWithBroadcastTxRequest: (NEBLBroadcastTxRequest*) broadcastTxRequest
    completionHandler: (void (^)(NEBLBroadcastTxResponse* output, NSError* error)) handler {
    // verify the required parameter 'broadcastTxRequest' is set
    if (broadcastTxRequest == nil) {
        NSParameterAssert(broadcastTxRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"broadcastTxRequest"] };
            NSError* error = [NSError errorWithDomain:kNEBLTestnetNTP1ApiErrorDomain code:kNEBLTestnetNTP1ApiMissingParamErrorCode userInfo:userInfo];
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
                              responseType: @"NEBLBroadcastTxResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NEBLBroadcastTxResponse*)data, error);
                                }
                            }];
}

///
/// Builds a transaction that burns an NTP1 Token
/// Builds an unsigned raw transaction that burns an NTP1 token on the Neblio blockchain. 
///  @param burnTokenRequest Object representing the token to be burned 
///
///  @returns NEBLBurnTokenResponse*
///
-(NSURLSessionTask*) testnetBurnTokenWithBurnTokenRequest: (NEBLBurnTokenRequest*) burnTokenRequest
    completionHandler: (void (^)(NEBLBurnTokenResponse* output, NSError* error)) handler {
    // verify the required parameter 'burnTokenRequest' is set
    if (burnTokenRequest == nil) {
        NSParameterAssert(burnTokenRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"burnTokenRequest"] };
            NSError* error = [NSError errorWithDomain:kNEBLTestnetNTP1ApiErrorDomain code:kNEBLTestnetNTP1ApiMissingParamErrorCode userInfo:userInfo];
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
                              responseType: @"NEBLBurnTokenResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NEBLBurnTokenResponse*)data, error);
                                }
                            }];
}

///
/// Information On a Neblio Address
/// Returns both NEBL and NTP1 token UTXOs held at the given address. 
///  @param address Neblio Address to get information on. 
///
///  @returns NEBLGetAddressInfoResponse*
///
-(NSURLSessionTask*) testnetGetAddressInfoWithAddress: (NSString*) address
    completionHandler: (void (^)(NEBLGetAddressInfoResponse* output, NSError* error)) handler {
    // verify the required parameter 'address' is set
    if (address == nil) {
        NSParameterAssert(address);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"address"] };
            NSError* error = [NSError errorWithDomain:kNEBLTestnetNTP1ApiErrorDomain code:kNEBLTestnetNTP1ApiMissingParamErrorCode userInfo:userInfo];
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
                              responseType: @"NEBLGetAddressInfoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NEBLGetAddressInfoResponse*)data, error);
                                }
                            }];
}

///
/// Get Addresses Holding a Token
/// Returns the the the addresses holding a token and how many tokens are held 
///  @param tokenid TokenId to request metadata for 
///
///  @returns NEBLGetTokenHoldersResponse*
///
-(NSURLSessionTask*) testnetGetTokenHoldersWithTokenid: (NSString*) tokenid
    completionHandler: (void (^)(NEBLGetTokenHoldersResponse* output, NSError* error)) handler {
    // verify the required parameter 'tokenid' is set
    if (tokenid == nil) {
        NSParameterAssert(tokenid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"tokenid"] };
            NSError* error = [NSError errorWithDomain:kNEBLTestnetNTP1ApiErrorDomain code:kNEBLTestnetNTP1ApiMissingParamErrorCode userInfo:userInfo];
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
                              responseType: @"NEBLGetTokenHoldersResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NEBLGetTokenHoldersResponse*)data, error);
                                }
                            }];
}

///
/// Returns the tokenId representing a token
/// Translates a token symbol to a tokenId if a token exists with that symbol on the network 
///  @param tokensymbol Token symbol 
///
///  @returns NEBLGetTokenIdResponse*
///
-(NSURLSessionTask*) testnetGetTokenIdWithTokensymbol: (NSString*) tokensymbol
    completionHandler: (void (^)(NEBLGetTokenIdResponse* output, NSError* error)) handler {
    // verify the required parameter 'tokensymbol' is set
    if (tokensymbol == nil) {
        NSParameterAssert(tokensymbol);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"tokensymbol"] };
            NSError* error = [NSError errorWithDomain:kNEBLTestnetNTP1ApiErrorDomain code:kNEBLTestnetNTP1ApiMissingParamErrorCode userInfo:userInfo];
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
                              responseType: @"NEBLGetTokenIdResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NEBLGetTokenIdResponse*)data, error);
                                }
                            }];
}

///
/// Get Issuance Metadata of Token
/// Returns the metadata associated with a token at time of issuance. 
///  @param tokenid TokenId to request metadata for 
///
///  @returns NEBLGetTokenMetadataResponse*
///
-(NSURLSessionTask*) testnetGetTokenMetadataOfIssuanceWithTokenid: (NSString*) tokenid
    completionHandler: (void (^)(NEBLGetTokenMetadataResponse* output, NSError* error)) handler {
    // verify the required parameter 'tokenid' is set
    if (tokenid == nil) {
        NSParameterAssert(tokenid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"tokenid"] };
            NSError* error = [NSError errorWithDomain:kNEBLTestnetNTP1ApiErrorDomain code:kNEBLTestnetNTP1ApiMissingParamErrorCode userInfo:userInfo];
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
                              responseType: @"NEBLGetTokenMetadataResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NEBLGetTokenMetadataResponse*)data, error);
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
///  @returns NEBLGetTokenMetadataResponse*
///
-(NSURLSessionTask*) testnetGetTokenMetadataOfUtxoWithTokenid: (NSString*) tokenid
    utxo: (NSString*) utxo
    completionHandler: (void (^)(NEBLGetTokenMetadataResponse* output, NSError* error)) handler {
    // verify the required parameter 'tokenid' is set
    if (tokenid == nil) {
        NSParameterAssert(tokenid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"tokenid"] };
            NSError* error = [NSError errorWithDomain:kNEBLTestnetNTP1ApiErrorDomain code:kNEBLTestnetNTP1ApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'utxo' is set
    if (utxo == nil) {
        NSParameterAssert(utxo);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"utxo"] };
            NSError* error = [NSError errorWithDomain:kNEBLTestnetNTP1ApiErrorDomain code:kNEBLTestnetNTP1ApiMissingParamErrorCode userInfo:userInfo];
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
                              responseType: @"NEBLGetTokenMetadataResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NEBLGetTokenMetadataResponse*)data, error);
                                }
                            }];
}

///
/// Information On an NTP1 Transaction
/// Returns detailed information regarding an NTP1 transaction. 
///  @param txid Neblio txid to get information on. 
///
///  @returns NEBLGetTransactionInfoResponse*
///
-(NSURLSessionTask*) testnetGetTransactionInfoWithTxid: (NSString*) txid
    completionHandler: (void (^)(NEBLGetTransactionInfoResponse* output, NSError* error)) handler {
    // verify the required parameter 'txid' is set
    if (txid == nil) {
        NSParameterAssert(txid);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"txid"] };
            NSError* error = [NSError errorWithDomain:kNEBLTestnetNTP1ApiErrorDomain code:kNEBLTestnetNTP1ApiMissingParamErrorCode userInfo:userInfo];
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
                              responseType: @"NEBLGetTransactionInfoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NEBLGetTransactionInfoResponse*)data, error);
                                }
                            }];
}

///
/// Builds a transaction that issues a new NTP1 Token
/// Builds an unsigned raw transaction that issues a new NTP1 token on the Neblio blockchain. 
///  @param issueTokenRequest Object representing the token to be created 
///
///  @returns NEBLIssueTokenResponse*
///
-(NSURLSessionTask*) testnetIssueTokenWithIssueTokenRequest: (NEBLIssueTokenRequest*) issueTokenRequest
    completionHandler: (void (^)(NEBLIssueTokenResponse* output, NSError* error)) handler {
    // verify the required parameter 'issueTokenRequest' is set
    if (issueTokenRequest == nil) {
        NSParameterAssert(issueTokenRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"issueTokenRequest"] };
            NSError* error = [NSError errorWithDomain:kNEBLTestnetNTP1ApiErrorDomain code:kNEBLTestnetNTP1ApiMissingParamErrorCode userInfo:userInfo];
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
                              responseType: @"NEBLIssueTokenResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NEBLIssueTokenResponse*)data, error);
                                }
                            }];
}

///
/// Builds a transaction that sends an NTP1 Token
/// Builds an unsigned raw transaction that sends an NTP1 token on the Neblio blockchain. 
///  @param sendTokenRequest Object representing the token to be sent 
///
///  @returns NEBLSendTokenResponse*
///
-(NSURLSessionTask*) testnetSendTokenWithSendTokenRequest: (NEBLSendTokenRequest*) sendTokenRequest
    completionHandler: (void (^)(NEBLSendTokenResponse* output, NSError* error)) handler {
    // verify the required parameter 'sendTokenRequest' is set
    if (sendTokenRequest == nil) {
        NSParameterAssert(sendTokenRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sendTokenRequest"] };
            NSError* error = [NSError errorWithDomain:kNEBLTestnetNTP1ApiErrorDomain code:kNEBLTestnetNTP1ApiMissingParamErrorCode userInfo:userInfo];
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
                              responseType: @"NEBLSendTokenResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NEBLSendTokenResponse*)data, error);
                                }
                            }];
}



@end
