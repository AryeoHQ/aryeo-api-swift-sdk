# ListingsAPI

All URIs are relative to *https://api.aryeo.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getListings**](ListingsAPI.md#getlistings) | **GET** /listings | Get the listings available to a group.
[**getListingsId**](ListingsAPI.md#getlistingsid) | **GET** /listings/{listing_id} | Get information about a listing.


# **getListings**
```swift
    open class func getListings(include: String? = nil, filterSearch: String? = nil, filterAddress: String? = nil, filterListAgent: String? = nil, filterStatus: FilterStatus_getListings? = nil, filterActive: Bool? = nil, filterPriceGte: Double? = nil, filterPriceLte: Double? = nil, filterSquareFeetGte: Double? = nil, filterSquareFeetLte: Double? = nil, filterBedroomsGte: Int? = nil, filterBedroomsLte: Int? = nil, filterBathroomsGte: Double? = nil, filterBathroomsLte: Double? = nil, sort: String? = nil, perPage: String? = nil, page: String? = nil, completion: @escaping (_ data: ListingCollection?, _ error: Error?) -> Void)
```

Get the listings available to a group.

Get the listings available to a group.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Aryeo

let include = "include_example" // String | Comma separated list of optional data to include in the response. (optional)
let filterSearch = "filterSearch_example" // String | Return listings that have fields matching this term. (optional)
let filterAddress = "filterAddress_example" // String | Return listings that have an address matching this term. (optional)
let filterListAgent = "filterListAgent_example" // String | Return listings that have a listing agent or co-listing agent matching this term. (optional)
let filterStatus = "filterStatus_example" // String | Return listings that have a certain status. (optional)
let filterActive = true // Bool | Set as true to return listings that have an active status (e.g. active statuses include `COMING_SOON`, `FOR_SALE`, `FOR_LEASE`, `PENDING_SALE`, `PENDING_LEASE`, `SOLD`, `LEASED`).  (optional)
let filterPriceGte = 987 // Double | Return listings where the price field is greater than or equal to this value. (optional)
let filterPriceLte = 987 // Double | Return listings where the price field is less than or equal to this value. (optional)
let filterSquareFeetGte = 987 // Double | Return listings where the square feet field is greater than or equal to this value. (optional)
let filterSquareFeetLte = 987 // Double | Return listings where the square feet field is less than or equal to this value. (optional)
let filterBedroomsGte = 987 // Int | Return listings where the bedrooms field is greater than or equal to this value. (optional)
let filterBedroomsLte = 987 // Int | Return listings where the bedrooms field is less than or equal to this value. (optional)
let filterBathroomsGte = 987 // Double | Return listings where the bathrooms field is greater than or equal to this value. (optional)
let filterBathroomsLte = 987 // Double | Return listings where the bathrooms field is less than or equal to this value. (optional)
let sort = "sort_example" // String | Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to `-created_at`. (optional)
let perPage = "perPage_example" // String | The number of items per page. Defaults to 25. (optional)
let page = "page_example" // String | The requested page. Defaults to 1. (optional)

// Get the listings available to a group.
ListingsAPI.getListings(include: include, filterSearch: filterSearch, filterAddress: filterAddress, filterListAgent: filterListAgent, filterStatus: filterStatus, filterActive: filterActive, filterPriceGte: filterPriceGte, filterPriceLte: filterPriceLte, filterSquareFeetGte: filterSquareFeetGte, filterSquareFeetLte: filterSquareFeetLte, filterBedroomsGte: filterBedroomsGte, filterBedroomsLte: filterBedroomsLte, filterBathroomsGte: filterBathroomsGte, filterBathroomsLte: filterBathroomsLte, sort: sort, perPage: perPage, page: page) { (response, error) in
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
 **include** | **String** | Comma separated list of optional data to include in the response. | [optional] 
 **filterSearch** | **String** | Return listings that have fields matching this term. | [optional] 
 **filterAddress** | **String** | Return listings that have an address matching this term. | [optional] 
 **filterListAgent** | **String** | Return listings that have a listing agent or co-listing agent matching this term. | [optional] 
 **filterStatus** | **String** | Return listings that have a certain status. | [optional] 
 **filterActive** | **Bool** | Set as true to return listings that have an active status (e.g. active statuses include &#x60;COMING_SOON&#x60;, &#x60;FOR_SALE&#x60;, &#x60;FOR_LEASE&#x60;, &#x60;PENDING_SALE&#x60;, &#x60;PENDING_LEASE&#x60;, &#x60;SOLD&#x60;, &#x60;LEASED&#x60;).  | [optional] 
 **filterPriceGte** | **Double** | Return listings where the price field is greater than or equal to this value. | [optional] 
 **filterPriceLte** | **Double** | Return listings where the price field is less than or equal to this value. | [optional] 
 **filterSquareFeetGte** | **Double** | Return listings where the square feet field is greater than or equal to this value. | [optional] 
 **filterSquareFeetLte** | **Double** | Return listings where the square feet field is less than or equal to this value. | [optional] 
 **filterBedroomsGte** | **Int** | Return listings where the bedrooms field is greater than or equal to this value. | [optional] 
 **filterBedroomsLte** | **Int** | Return listings where the bedrooms field is less than or equal to this value. | [optional] 
 **filterBathroomsGte** | **Double** | Return listings where the bathrooms field is greater than or equal to this value. | [optional] 
 **filterBathroomsLte** | **Double** | Return listings where the bathrooms field is less than or equal to this value. | [optional] 
 **sort** | **String** | Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to &#x60;-created_at&#x60;. | [optional] 
 **perPage** | **String** | The number of items per page. Defaults to 25. | [optional] 
 **page** | **String** | The requested page. Defaults to 1. | [optional] 

### Return type

[**ListingCollection**](ListingCollection.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getListingsId**
```swift
    open class func getListingsId(listingId: UUID, include: String? = nil, completion: @escaping (_ data: ListingResource?, _ error: Error?) -> Void)
```

Get information about a listing.

Get information about a listing.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Aryeo

let listingId = 987 // UUID | The ID of a listing. UUID Version 4.
let include = "include_example" // String | Comma separated list of optional data to include in the response. (optional)

// Get information about a listing.
ListingsAPI.getListingsId(listingId: listingId, include: include) { (response, error) in
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
 **listingId** | [**UUID**](.md) | The ID of a listing. UUID Version 4. | 
 **include** | **String** | Comma separated list of optional data to include in the response. | [optional] 

### Return type

[**ListingResource**](ListingResource.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

