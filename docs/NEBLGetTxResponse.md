# NEBLGetTxResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**txid** | **NSString*** | TXID of transaction | [optional] 
**version** | **NSNumber*** | Transaction version | [optional] 
**locktime** | **NSNumber*** | Transaction locktime | [optional] 
**vin** | [**NSArray&lt;NEBLGetTxResponseVin&gt;***](NEBLGetTxResponseVin.md) | Array of transaction inputs | [optional] 
**vout** | [**NSArray&lt;NEBLGetTxResponseVout&gt;***](NEBLGetTxResponseVout.md) | Array of transaction outputs | [optional] 
**blocktime** | **NSNumber*** | Block time of this transaction | [optional] 
**blockheight** | **NSNumber*** | Block height of this transaction | [optional] 
**totalsent** | **NSNumber*** | Total NEBL sent in this transaction in satoshis | [optional] 
**fee** | **NSNumber*** | Total NEBL used as fee for this transcation in satoshis | [optional] 
**blockhash** | **NSString*** | Hash of the block this transaction is in | [optional] 
**time** | **NSNumber*** | Transaction time | [optional] 
**confirmations** | **NSNumber*** | Number of transaction confirmations | [optional] 
**valueOut** | **NSNumber*** | Total NEBL output in this transaction | [optional] 
**valueIn** | **NSNumber*** | Total NEBL input in this transaction | [optional] 
**fees** | **NSNumber*** | Total NEBL used in fees for this transaction | [optional] 
**size** | **NSNumber*** | Transcation size in bytes | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


