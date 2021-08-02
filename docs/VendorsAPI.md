# VendorsAPI

All URIs are relative to *https://api.aryeo.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getVendors**](VendorsAPI.md#getvendors) | **GET** /vendors | Get vendors available to a group.
[**getVendorsId**](VendorsAPI.md#getvendorsid) | **GET** /vendors/{vendor_id} | Get vendors available to a group.


# **getVendors**
```swift
    open class func getVendors(include: String? = nil, completion: @escaping (_ data: GroupCollection?, _ error: Error?) -> Void)
```

Get vendors available to a group.

Get vendors available to a group.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Aryeo

let include = "include_example" // String | Comma separated list of optional data to include in the response. (optional)

// Get vendors available to a group.
VendorsAPI.getVendors(include: include) { (response, error) in
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

### Return type

[**GroupCollection**](GroupCollection.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVendorsId**
```swift
    open class func getVendorsId(vendorId: UUID, include: String? = nil, completion: @escaping (_ data: GroupResource?, _ error: Error?) -> Void)
```

Get vendors available to a group.

Get information about a vendor.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Aryeo

let vendorId = 987 // UUID | ID of the group that is associated as a vendor.
let include = "include_example" // String | Comma separated list of optional data to include in the response. (optional)

// Get vendors available to a group.
VendorsAPI.getVendorsId(vendorId: vendorId, include: include) { (response, error) in
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
 **vendorId** | [**UUID**](.md) | ID of the group that is associated as a vendor. | 
 **include** | **String** | Comma separated list of optional data to include in the response. | [optional] 

### Return type

[**GroupResource**](GroupResource.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

