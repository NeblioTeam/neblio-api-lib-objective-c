# NEBLIssueTokenRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**issueAddress** | **NSString*** | Address issuing the token | 
**amount** | **NSNumber*** | Number of tokens to issue | 
**divisibility** | **NSNumber*** | Number of decimal places the token should be divisble by (0-7) | 
**fee** | **NSNumber*** | Fee in satoshi to include in the issuance transaction min 1000000000 (10 NEBL) | 
**reissuable** | **NSNumber*** | whether the token should be reissuable | 
**flags** | [**NEBLIssueTokenRequestFlags***](NEBLIssueTokenRequestFlags.md) |  | [optional] 
**transfer** | [**NSArray&lt;NEBLIssueTokenRequestTransfer&gt;***](NEBLIssueTokenRequestTransfer.md) |  | 
**metadata** | [**NEBLIssueTokenRequestMetadata***](NEBLIssueTokenRequestMetadata.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


