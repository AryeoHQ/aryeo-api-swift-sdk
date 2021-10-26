# OrderPostPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fulfillmentStatus** | **String** | The fulfillment status of the order. Defaults to \&quot;UNFULFILLED\&quot;. | [optional] 
**internalNotes** | **String** | Internal notes that will be attached to the order. Viewable only by the team. | [optional] 
**paymentStatus** | **String** | The payment status of the order. Defaults to \&quot;UNPAID\&quot;.  | [optional] 
**addressId** | **UUID** | ID of the address to associate with the order. UUID Version 4. | [optional] 
**customerId** | **UUID** | ID of the customer to associate with the order. UUID Version 4. | [optional] 
**notify** | **Bool** | Indicates if the customer and creator notifications should be sent when creating the order. Requires an address and customer to be set in order for the notifications to be sent. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


