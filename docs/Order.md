# Order

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | ID of the order. | 
**displayId** | **Int** | A vanity id to be displayed for the order. For example, \&quot;Order #1000\&quot;. | 
**totalPriceCents** | **Int** | The total price of the order given in cents. | 
**currency** | [**Currency**](Currency.md) |  | 
**paymentStatus** | **String** | The payment status of the order. | 
**paymentUrl** | **String** | A URL for to pay for the order. | [optional] 
**listing** | [**PartialListing**](PartialListing.md) |  | [optional] 
**fulfillmentStatus** | **String** | The fulfillment status of the order. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


