# NEBLSendTokenRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fee** | **NSNumber*** | Fee in satoshi to include in the issuance transaction min 10000 (0.0001 NEBL) | 
**from** | **NSArray&lt;NSString*&gt;*** | Array of addresses to send the token from | [optional] 
**sendutxo** | **NSArray&lt;NSString*&gt;*** | Array of UTXOs to send the token from | [optional] 
**to** | [**NSArray&lt;NEBLSendTokenRequestTo&gt;***](NEBLSendTokenRequestTo.md) |  | 
**flags** | [**NEBLIssueTokenRequestFlags***](NEBLIssueTokenRequestFlags.md) |  | [optional] 
**metadata** | [**NEBLIssueTokenRequestMetadata***](NEBLIssueTokenRequestMetadata.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


