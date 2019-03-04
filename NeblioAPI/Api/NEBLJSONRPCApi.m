#import "NEBLJSONRPCApi.h"
#import "NEBLQueryParamCollection.h"
#import "NEBLApiClient.h"
#import "NEBLRpcRequest.h"
#import "NEBLRpcResponse.h"


@interface NEBLJSONRPCApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation NEBLJSONRPCApi

NSString* kNEBLJSONRPCApiErrorDomain = @"NEBLJSONRPCApiErrorDomain";
NSInteger kNEBLJSONRPCApiMissingParamErrorCode = 234513;

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
/// Send a JSON-RPC call to a localhost neblio-Qt or nebliod node
/// Call any Neblio RPC command from the Neblio API libraries. Useful for signing transactions with a local node and other functions. Will not work from a browser due to CORS restrictions. Requires a node to be running locally at 127.0.0.1
///  @param rpcRequest  
///
///  @returns NEBLRpcResponse*
///
-(NSURLSessionTask*) jsonRpcWithRpcRequest: (NEBLRpcRequest*) rpcRequest
    completionHandler: (void (^)(NEBLRpcResponse* output, NSError* error)) handler {
    // verify the required parameter 'rpcRequest' is set
    if (rpcRequest == nil) {
        NSParameterAssert(rpcRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"rpcRequest"] };
            NSError* error = [NSError errorWithDomain:kNEBLJSONRPCApiErrorDomain code:kNEBLJSONRPCApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/"];

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
    NSArray *authSettings = @[@"rpcAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = rpcRequest;

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
                              responseType: @"NEBLRpcResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NEBLRpcResponse*)data, error);
                                }
                            }];
}



@end
