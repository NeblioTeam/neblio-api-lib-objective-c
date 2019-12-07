# NEBLGetTokenMetadataResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tokenId** | **NSString*** | ID of the token | [optional] 
**someUtxo** | **NSString*** | Example UTXO containing this token. | [optional] 
**divisibility** | **NSNumber*** | Decimal places the token is divisible to | [optional] 
**lockStatus** | **NSNumber*** | Whether issuance of more tokens is locked | [optional] 
**aggregationPolicy** | **NSString*** | Whether the tokens are aggregatable | [optional] 
**initialIssuanceAmount** | **NSNumber*** | Total tokens issued in initial issuance | [optional] 
**totalSupply** | **NSNumber*** | Total number of tokens in supply | [optional] 
**numOfHolders** | **NSNumber*** | Total number of addresses this token is held at | [optional] 
**numOfTransfers** | **NSNumber*** | Total number of transactions of this token | [optional] 
**numOfIssuance** | **NSNumber*** | Total number of times this token has been issued | [optional] 
**numOfBurns** | **NSNumber*** | Number of times tokens have been burned | [optional] 
**firstBlock** | **NSNumber*** | Block number token was issued in | [optional] 
**issuanceTxid** | **NSString*** | TXID the token was issued with | [optional] 
**issueAddress** | **NSString*** | Address that issued the tokens | [optional] 
**metadataOfIssuance** | [**NEBLGetTokenMetadataResponseMetadataOfIssuance***](NEBLGetTokenMetadataResponseMetadataOfIssuance.md) |  | [optional] 
**metadataOfUtxo** | [**NEBLGetTokenMetadataResponseMetadataOfUtxo***](NEBLGetTokenMetadataResponseMetadataOfUtxo.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


