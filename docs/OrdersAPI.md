# OrdersAPI

All URIs are relative to *https://api.aryeo.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getOrders**](OrdersAPI.md#getorders) | **GET** /orders | Get orders available to a group.
[**postOrders**](OrdersAPI.md#postorders) | **POST** /orders | Create an order.


# **getOrders**
```swift
    open class func getOrders(completion: @escaping (_ data: OrderCollection?, _ error: Error?) -> Void)
```

Get orders available to a group.

Get orders of a group.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Aryeo


// Get orders available to a group.
OrdersAPI.getOrders() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OrderCollection**](OrderCollection.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postOrders**
```swift
    open class func postOrders(orderPostPayload: OrderPostPayload? = nil, completion: @escaping (_ data: OrderResource?, _ error: Error?) -> Void)
```

Create an order.

Create an order.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Aryeo

let orderPostPayload = OrderPostPayload(fulfillmentStatus: "fulfillmentStatus_example", paymentStatus: "paymentStatus_example", productItems: [ProductItem(id: 123)]) // OrderPostPayload |  (optional)

// Create an order.
OrdersAPI.postOrders(orderPostPayload: orderPostPayload) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderPostPayload** | [**OrderPostPayload**](OrderPostPayload.md) |  | [optional] 

### Return type

[**OrderResource**](OrderResource.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

