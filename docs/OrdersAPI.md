# OrdersAPI

All URIs are relative to *https://api.aryeo.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getOrders**](OrdersAPI.md#getorders) | **GET** /orders | List all orders.
[**getOrdersId**](OrdersAPI.md#getordersid) | **GET** /orders/{order_id} | Retrieve an order.
[**getProducts**](OrdersAPI.md#getproducts) | **GET** /products | List all products.
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

# **getOrdersId**
```swift
    open class func getOrdersId(orderId: UUID, include: String? = nil, completion: @escaping (_ data: OrderResource?, _ error: Error?) -> Void)
```

Retrieve an order.

Retrieves the details of an order with the given ID.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Aryeo

let orderId = 987 // UUID | The ID of an order. UUID Version 4.
let include = "include_example" // String | Comma separated list of optional data to include in the response. (optional)

// Retrieve an order.
OrdersAPI.getOrdersId(orderId: orderId, include: include) { (response, error) in
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
 **orderId** | [**UUID**](.md) | The ID of an order. UUID Version 4. | 
 **include** | **String** | Comma separated list of optional data to include in the response. | [optional] 

### Return type

[**OrderResource**](OrderResource.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProducts**
```swift
    open class func getProducts(sort: String? = nil, perPage: String? = nil, page: String? = nil, filterSearch: String? = nil, filterIncludeInactive: Bool? = nil, filterCategoryIds: [UUID]? = nil, filterType: String? = nil, completion: @escaping (_ data: ProductCollection?, _ error: Error?) -> Void)
```

List all products.

List all products of a group.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Aryeo

let sort = "sort_example" // String | Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to `title`. (optional)
let perPage = "perPage_example" // String | The number of items per page. Defaults to 25. (optional)
let page = "page_example" // String | The requested page. Defaults to 1. (optional)
let filterSearch = "filterSearch_example" // String | Return products that have fields matching this term. (optional)
let filterIncludeInactive = true // Bool | Include inactive products (in addition to active products) when returning products. (optional)
let filterCategoryIds = [123] // [UUID] | Return products in the given categories. (optional)
let filterType = "filterType_example" // String | Return products matching the given type. Allowed values are: MAIN, ADDON. (optional)

// List all products.
OrdersAPI.getProducts(sort: sort, perPage: perPage, page: page, filterSearch: filterSearch, filterIncludeInactive: filterIncludeInactive, filterCategoryIds: filterCategoryIds, filterType: filterType) { (response, error) in
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
 **filterIncludeInactive** | **Bool** | Include inactive products (in addition to active products) when returning products. | [optional] 
 **filterCategoryIds** | [**[UUID]**](UUID.md) | Return products in the given categories. | [optional] 
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

let orderPostPayload = OrderPostPayload(fulfillmentStatus: "fulfillmentStatus_example", internalNotes: "internalNotes_example", paymentStatus: "paymentStatus_example", addressId: 123, customerId: 123, notify: true) // OrderPostPayload | OrderPostPayload (optional)

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

