#import <Foundation/Foundation.h>

/**
* Neblio REST API Suite
* APIs for Interacting with NTP1 Tokens & The Neblio Blockchain
*
* OpenAPI spec version: 1.2.2
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#ifndef NEBLDebugLogResponse
#define NEBLDebugLogResponse(response, responseObject,request, error) [[NEBLLogger sharedLogger] logResponse:response responseObject:responseObject request:request error:error];
#endif

/**
 * Log debug message macro
 */
#ifndef NEBLDebugLog
#define NEBLDebugLog(format, ...) [[NEBLLogger sharedLogger] debugLog:[NSString stringWithFormat:@"%s", __PRETTY_FUNCTION__] message: format, ##__VA_ARGS__];
#endif

@interface NEBLLogger : NSObject

+(instancetype)sharedLogger;

/**
 * Enabled switch, default NO - default set by NEBLConfiguration debug property
 */
@property (nonatomic, assign, getter=isEnabled) BOOL enabled;

/**
 * Debug file location, default log in console
 */
@property (nonatomic, strong) NSString *loggingFile;

/**
 * Log file handler, this property is used by sdk internally.
 */
@property (nonatomic, strong, readonly) NSFileHandle *loggingFileHandler;

/**
 * Log debug message
 */
-(void)debugLog:(NSString *)method message:(NSString *)format, ...;

/**
 * Logs request and response
 *
 * @param response NSURLResponse for the HTTP request.
 * @param responseObject response object of the HTTP request.
 * @param request   The HTTP request.
 * @param error     The error of the HTTP request.
 */
- (void)logResponse:(NSURLResponse *)response responseObject:(id)responseObject request:(NSURLRequest *)request error:(NSError *)error;

@end
