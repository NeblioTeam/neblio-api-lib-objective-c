# OAIIssueTokenRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**issueAddress** | **NSString*** | Address issuing the token | 
**amount** | **NSNumber*** | Number of tokens to issue | 
**divisibility** | **NSNumber*** | Number of decimal places the token should be divisble by (0-7) | 
**fee** | **NSNumber*** | Fee in satoshi to include in the issuance transaction min 1000000000 (10 NEBL) | 
**reissuable** | **NSNumber*** | whether the token should be reissuable | 
**flags** | [**OAIIssueTokenRequestFlags***](OAIIssueTokenRequestFlags.md) |  | [optional] 
**transfer** | [**NSArray&lt;OAIIssueTokenRequestTransfer&gt;***](OAIIssueTokenRequestTransfer.md) |  | 
**metadata** | [**OAIIssueTokenRequestMetadata***](OAIIssueTokenRequestMetadata.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


