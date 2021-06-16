# VendorsAPI

All URIs are relative to *https://api.aryeo.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getVendors**](VendorsAPI.md#getvendors) | **GET** /vendors | Get vendors available to a group.
[**getVendorsSearch**](VendorsAPI.md#getvendorssearch) | **GET** /vendors/search | Get vendors that can be added to the group&#39;s vendor list.


# **getVendors**
```swift
    open class func getVendors(completion: @escaping (_ data: GroupCollection?, _ error: Error?) -> Void)
```

Get vendors available to a group.

Get vendors available to a group.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Aryeo


// Get vendors available to a group.
VendorsAPI.getVendors() { (response, error) in
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

[**GroupCollection**](GroupCollection.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVendorsSearch**
```swift
    open class func getVendorsSearch(query: String? = nil, perPage: String? = nil, page: String? = nil, completion: @escaping (_ data: GroupCollection?, _ error: Error?) -> Void)
```

Get vendors that can be added to the group's vendor list.

Get vendors that can be added to the group's vendor list, excluding those already available to a group. 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Aryeo

let query = "query_example" // String | A search query. (optional)
let perPage = "perPage_example" // String | The number of items per page. Defaults to 25. (optional)
let page = "page_example" // String | The requested page. Defaults to 1. (optional)

// Get vendors that can be added to the group's vendor list.
VendorsAPI.getVendorsSearch(query: query, perPage: perPage, page: page) { (response, error) in
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
 **query** | **String** | A search query. | [optional] 
 **perPage** | **String** | The number of items per page. Defaults to 25. | [optional] 
 **page** | **String** | The requested page. Defaults to 1. | [optional] 

### Return type

[**GroupCollection**](GroupCollection.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

