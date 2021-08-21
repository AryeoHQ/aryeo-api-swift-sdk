# OrdersAPI

All URIs are relative to *https://api.aryeo.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getOrders**](OrdersAPI.md#getorders) | **GET** /orders | List all orders.
[**getProducts**](OrdersAPI.md#getproducts) | **GET** /products | Get products available to a group.
[**postOrders**](OrdersAPI.md#postorders) | **POST** /orders | Create an order.


# **getOrders**
```swift
    open class func getOrders(sort: String? = nil, perPage: String? = nil, page: String? = nil, completion: @escaping (_ data: OrderCollection?, _ error: Error?) -> Void)
```

List all orders.

Lists all orders of a group.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Aryeo

let sort = "sort_example" // String | Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to `-created_at`. (optional)
let perPage = "perPage_example" // String | The number of items per page. Defaults to 25. (optional)
let page = "page_example" // String | The requested page. Defaults to 1. (optional)

// List all orders.
OrdersAPI.getOrders(sort: sort, perPage: perPage, page: page) { (response, error) in
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
 **sort** | **String** | Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to &#x60;-created_at&#x60;. | [optional] 
 **perPage** | **String** | The number of items per page. Defaults to 25. | [optional] 
 **page** | **String** | The requested page. Defaults to 1. | [optional] 

### Return type

[**OrderCollection**](OrderCollection.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProducts**
```swift
    open class func getProducts(sort: String? = nil, perPage: String? = nil, page: String? = nil, filterSearch: String? = nil, filterCategoryIds: String? = nil, filterType: String? = nil, completion: @escaping (_ data: ProductCollection?, _ error: Error?) -> Void)
```

Get products available to a group.

Get products of a group.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Aryeo

let sort = "sort_example" // String | Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to `title`. (optional)
let perPage = "perPage_example" // String | The number of items per page. Defaults to 25. (optional)
let page = "page_example" // String | The requested page. Defaults to 1. (optional)
let filterSearch = "filterSearch_example" // String | Return products that have fields matching this term. (optional)
let filterCategoryIds = "filterCategoryIds_example" // String | Return products in the given categories. (optional)
let filterType = "filterType_example" // String | Return products matching the given type. Allowed values are: MAIN, ADDON. (optional)

// Get products available to a group.
OrdersAPI.getProducts(sort: sort, perPage: perPage, page: page, filterSearch: filterSearch, filterCategoryIds: filterCategoryIds, filterType: filterType) { (response, error) in
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
 **sort** | **String** | Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to &#x60;title&#x60;. | [optional] 
 **perPage** | **String** | The number of items per page. Defaults to 25. | [optional] 
 **page** | **String** | The requested page. Defaults to 1. | [optional] 
 **filterSearch** | **String** | Return products that have fields matching this term. | [optional] 
 **filterCategoryIds** | **String** | Return products in the given categories. | [optional] 
 **filterType** | **String** | Return products matching the given type. Allowed values are: MAIN, ADDON. | [optional] 

### Return type

[**ProductCollection**](ProductCollection.md)

### Authorization

[Token](../README.md#Token)

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

let orderPostPayload = OrderPostPayload(fulfillmentStatus: "fulfillmentStatus_example", paymentStatus: "paymentStatus_example", placeId: "placeId_example") // OrderPostPayload | OrderPostPayload (optional)

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
 **orderPostPayload** | [**OrderPostPayload**](OrderPostPayload.md) | OrderPostPayload | [optional] 

### Return type

[**OrderResource**](OrderResource.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

