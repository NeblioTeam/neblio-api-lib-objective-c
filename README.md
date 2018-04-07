# SwaggerClient

APIs for Interacting with NTP1 Tokens & The Neblio Blockchain

This ObjC package is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 1.0.0
- Package version: 
- Build package: io.swagger.codegen.languages.ObjcClientCodegen

## Requirements

The SDK requires [**ARC (Automatic Reference Counting)**](http://stackoverflow.com/questions/7778356/how-to-enable-disable-automatic-reference-counting) to be enabled in the Xcode project.

## Installation & Usage
### Install from Github using [CocoaPods](https://cocoapods.org/)

Add the following to the Podfile:

```ruby
pod 'SwaggerClient', :git => 'https://github.com//.git'
```

To specify a particular branch, append `, :branch => 'branch-name-here'`

To specify a particular commit, append `, :commit => '11aa22'`

### Install from local path using [CocoaPods](https://cocoapods.org/)

Put the SDK under your project folder (e.g. /path/to/objc_project/Vendor/SwaggerClient) and then add the following to the Podfile:

```ruby
pod 'SwaggerClient', :path => 'Vendor/SwaggerClient'
```

### Usage

Import the following:

```objc
#import <SwaggerClient/SWGApiClient.h>
#import <SwaggerClient/SWGDefaultConfiguration.h>
// load models
#import <SwaggerClient/SWGBroadcastTxRequest.h>
#import <SwaggerClient/SWGBroadcastTxResponse.h>
#import <SwaggerClient/SWGBurnTokenRequest.h>
#import <SwaggerClient/SWGBurnTokenRequestBurn.h>
#import <SwaggerClient/SWGBurnTokenResponse.h>
#import <SwaggerClient/SWGError.h>
#import <SwaggerClient/SWGGetAddressInfoResponse.h>
#import <SwaggerClient/SWGGetAddressInfoResponseTokens.h>
#import <SwaggerClient/SWGGetAddressInfoResponseUtxos.h>
#import <SwaggerClient/SWGGetTokenHoldersResponse.h>
#import <SwaggerClient/SWGGetTokenHoldersResponseHolders.h>
#import <SwaggerClient/SWGGetTokenIdResponse.h>
#import <SwaggerClient/SWGGetTokenMetadataResponse.h>
#import <SwaggerClient/SWGGetTokenMetadataResponseMetadataOfIssuance.h>
#import <SwaggerClient/SWGGetTokenMetadataResponseMetadataOfIssuanceData.h>
#import <SwaggerClient/SWGGetTokenMetadataResponseMetadataOfIssuanceDataUserData.h>
#import <SwaggerClient/SWGGetTokenMetadataResponseMetadataOfIssuanceDataUserDataMeta.h>
#import <SwaggerClient/SWGIssueTokenRequest.h>
#import <SwaggerClient/SWGIssueTokenRequestMetadata.h>
#import <SwaggerClient/SWGIssueTokenRequestMetadataEncryptions.h>
#import <SwaggerClient/SWGIssueTokenRequestMetadataRules.h>
#import <SwaggerClient/SWGIssueTokenRequestMetadataRulesExpiration.h>
#import <SwaggerClient/SWGIssueTokenRequestMetadataRulesFees.h>
#import <SwaggerClient/SWGIssueTokenRequestMetadataRulesFeesItems.h>
#import <SwaggerClient/SWGIssueTokenRequestMetadataRulesHolders.h>
#import <SwaggerClient/SWGIssueTokenRequestMetadataUrls.h>
#import <SwaggerClient/SWGIssueTokenResponse.h>
#import <SwaggerClient/SWGSendTokenRequest.h>
#import <SwaggerClient/SWGSendTokenRequestTo.h>
#import <SwaggerClient/SWGSendTokenResponse.h>
// load API classes for accessing endpoints
#import <SwaggerClient/SWGNTP1Api.h>

```

## Recommendation

It's recommended to create an instance of ApiClient per thread in a multi-threaded environment to avoid any potential issues.

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```objc


SWGBroadcastTxRequest* *body = [[SWGBroadcastTxRequest alloc] init]; // Object representing a transaction to broadcast

SWGNTP1Api *apiInstance = [[SWGNTP1Api alloc] init];

// Broadcasts a signed raw transaction to the network
[apiInstance broadcastTxWithBody:body
              completionHandler: ^(SWGBroadcastTxResponse* output, NSError* error) {
                            if (output) {
                                NSLog(@"%@", output);
                            }
                            if (error) {
                                NSLog(@"Error: %@", error);
                            }
                        }];

```

## Documentation for API Endpoints

All URIs are relative to *https://ntp1node.nebl.io:1443*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SWGNTP1Api* | [**broadcastTx**](docs/SWGNTP1Api.md#broadcasttx) | **POST** /ntp1/broadcast | Broadcasts a signed raw transaction to the network
*SWGNTP1Api* | [**burnToken**](docs/SWGNTP1Api.md#burntoken) | **POST** /ntp1/burntoken | Builds a transaction that burns an NTP1 Token
*SWGNTP1Api* | [**getAddressInfo**](docs/SWGNTP1Api.md#getaddressinfo) | **GET** /ntp1/addressinfo/{address} | Information On a Neblio Address
*SWGNTP1Api* | [**getTokenHolders**](docs/SWGNTP1Api.md#gettokenholders) | **GET** /ntp1/stakeholders/{tokenid} | Get Addresses Holding a Token
*SWGNTP1Api* | [**getTokenId**](docs/SWGNTP1Api.md#gettokenid) | **GET** /ntp1/tokenid/{tokensymbol} | Returns the tokenId representing a token
*SWGNTP1Api* | [**getTokenMetadataOfIssuance**](docs/SWGNTP1Api.md#gettokenmetadataofissuance) | **GET** /ntp1/tokenmetadata/{tokenid} | Get Issuance Metadata of Token
*SWGNTP1Api* | [**getTokenMetadataOfUtxo**](docs/SWGNTP1Api.md#gettokenmetadataofutxo) | **GET** /ntp1/tokenmetadata/{tokenid}/{utxo} | Get UTXO Metadata of Token
*SWGNTP1Api* | [**issueToken**](docs/SWGNTP1Api.md#issuetoken) | **POST** /ntp1/issue | Builds a transaction that issues a new NTP1 Token
*SWGNTP1Api* | [**sendToken**](docs/SWGNTP1Api.md#sendtoken) | **POST** /ntp1/sendtoken | Builds a transaction that sends an NTP1 Token


## Documentation For Models

 - [SWGBroadcastTxRequest](docs/SWGBroadcastTxRequest.md)
 - [SWGBroadcastTxResponse](docs/SWGBroadcastTxResponse.md)
 - [SWGBurnTokenRequest](docs/SWGBurnTokenRequest.md)
 - [SWGBurnTokenRequestBurn](docs/SWGBurnTokenRequestBurn.md)
 - [SWGBurnTokenResponse](docs/SWGBurnTokenResponse.md)
 - [SWGError](docs/SWGError.md)
 - [SWGGetAddressInfoResponse](docs/SWGGetAddressInfoResponse.md)
 - [SWGGetAddressInfoResponseTokens](docs/SWGGetAddressInfoResponseTokens.md)
 - [SWGGetAddressInfoResponseUtxos](docs/SWGGetAddressInfoResponseUtxos.md)
 - [SWGGetTokenHoldersResponse](docs/SWGGetTokenHoldersResponse.md)
 - [SWGGetTokenHoldersResponseHolders](docs/SWGGetTokenHoldersResponseHolders.md)
 - [SWGGetTokenIdResponse](docs/SWGGetTokenIdResponse.md)
 - [SWGGetTokenMetadataResponse](docs/SWGGetTokenMetadataResponse.md)
 - [SWGGetTokenMetadataResponseMetadataOfIssuance](docs/SWGGetTokenMetadataResponseMetadataOfIssuance.md)
 - [SWGGetTokenMetadataResponseMetadataOfIssuanceData](docs/SWGGetTokenMetadataResponseMetadataOfIssuanceData.md)
 - [SWGGetTokenMetadataResponseMetadataOfIssuanceDataUserData](docs/SWGGetTokenMetadataResponseMetadataOfIssuanceDataUserData.md)
 - [SWGGetTokenMetadataResponseMetadataOfIssuanceDataUserDataMeta](docs/SWGGetTokenMetadataResponseMetadataOfIssuanceDataUserDataMeta.md)
 - [SWGIssueTokenRequest](docs/SWGIssueTokenRequest.md)
 - [SWGIssueTokenRequestMetadata](docs/SWGIssueTokenRequestMetadata.md)
 - [SWGIssueTokenRequestMetadataEncryptions](docs/SWGIssueTokenRequestMetadataEncryptions.md)
 - [SWGIssueTokenRequestMetadataRules](docs/SWGIssueTokenRequestMetadataRules.md)
 - [SWGIssueTokenRequestMetadataRulesExpiration](docs/SWGIssueTokenRequestMetadataRulesExpiration.md)
 - [SWGIssueTokenRequestMetadataRulesFees](docs/SWGIssueTokenRequestMetadataRulesFees.md)
 - [SWGIssueTokenRequestMetadataRulesFeesItems](docs/SWGIssueTokenRequestMetadataRulesFeesItems.md)
 - [SWGIssueTokenRequestMetadataRulesHolders](docs/SWGIssueTokenRequestMetadataRulesHolders.md)
 - [SWGIssueTokenRequestMetadataUrls](docs/SWGIssueTokenRequestMetadataUrls.md)
 - [SWGIssueTokenResponse](docs/SWGIssueTokenResponse.md)
 - [SWGSendTokenRequest](docs/SWGSendTokenRequest.md)
 - [SWGSendTokenRequestTo](docs/SWGSendTokenRequestTo.md)
 - [SWGSendTokenResponse](docs/SWGSendTokenResponse.md)


## Documentation For Authorization

 All endpoints do not require authorization.


## Author




