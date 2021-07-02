# ListingsAPI

All URIs are relative to *https://api.aryeo.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getListings**](ListingsAPI.md#getlistings) | **GET** /listings | Get the listings available to a group.
[**getListingsId**](ListingsAPI.md#getlistingsid) | **GET** /listings/{uuid} | Get information about a listing.


# **getListings**
```swift
    open class func getListings(query: String? = nil, perPage: String? = nil, page: String? = nil, status: Status_getListings? = nil, price: Int? = nil, bathrooms: Double? = nil, bedrooms: Int? = nil, completion: @escaping (_ data: PartialListingCollection?, _ error: Error?) -> Void)
```

Get the listings available to a group.

Get the listings available to a group.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Aryeo

let query = "query_example" // String | A search query. (optional)
let perPage = "perPage_example" // String | The number of items per page. Defaults to 25. (optional)
let page = "page_example" // String | The requested page. Defaults to 1. (optional)
let status = "status_example" // String | The status you want to scope down to, example sold,  coming_soon,  for_sale, sold (optional)
let price = 987 // Int | The price value and greater will be returned. (optional)
let bathrooms = 987 // Double | Number of bathrooms minimum. (optional)
let bedrooms = 987 // Int | Number of bedrooms minimum. (optional)

// Get the listings available to a group.
ListingsAPI.getListings(query: query, perPage: perPage, page: page, status: status, price: price, bathrooms: bathrooms, bedrooms: bedrooms) { (response, error) in
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
 **status** | **String** | The status you want to scope down to, example sold,  coming_soon,  for_sale, sold | [optional] 
 **price** | **Int** | The price value and greater will be returned. | [optional] 
 **bathrooms** | **Double** | Number of bathrooms minimum. | [optional] 
 **bedrooms** | **Int** | Number of bedrooms minimum. | [optional] 

### Return type

[**PartialListingCollection**](PartialListingCollection.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getListingsId**
```swift
    open class func getListingsId(uuid: UUID, completion: @escaping (_ data: ListingResource?, _ error: Error?) -> Void)
```

Get information about a listing.

Get information about a listing.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Aryeo

let uuid = 987 // UUID | The UUID of a listing.

// Get information about a listing.
ListingsAPI.getListingsId(uuid: uuid) { (response, error) in
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
 **uuid** | [**UUID**](.md) | The UUID of a listing. | 

### Return type

[**ListingResource**](ListingResource.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

