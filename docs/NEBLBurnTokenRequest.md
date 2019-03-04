# NEBLBurnTokenRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fee** | **NSNumber*** | Fee in satoshi to include in the issuance transaction min 10000 (0.0001 NEBL) | 
**from** | **NSArray&lt;NSString*&gt;*** | Array of addresses to send the token from | [optional] 
**transfer** | [**NSArray&lt;NEBLSendTokenRequestTo&gt;***](NEBLSendTokenRequestTo.md) |  | [optional] 
**burn** | [**NSArray&lt;NEBLBurnTokenRequestBurn&gt;***](NEBLBurnTokenRequestBurn.md) | Array of objects representing tokens to be burned | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


