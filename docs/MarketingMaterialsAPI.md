# MarketingMaterialsAPI

All URIs are relative to *https://api.aryeo.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**putMarketingMaterialsTemplatesUuidPublish**](MarketingMaterialsAPI.md#putmarketingmaterialstemplatesuuidpublish) | **PUT** /marketing-materials/templates/{uuid}/publish | Publish a marketing material template.
[**putMarketingMaterialsUuidPublish**](MarketingMaterialsAPI.md#putmarketingmaterialsuuidpublish) | **PUT** /marketing-materials/{uuid}/publish | Publish a marketing material.


# **putMarketingMaterialsTemplatesUuidPublish**
```swift
    open class func putMarketingMaterialsTemplatesUuidPublish(uuid: UUID, marketingMaterialTemplatePublishPayload: MarketingMaterialTemplatePublishPayload? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Publish a marketing material template.

Publish a marketing material template.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Aryeo

let uuid = 987 // UUID | UUID of the marketing material template record.
let marketingMaterialTemplatePublishPayload = MarketingMaterialTemplatePublishPayload(polotnoJson: "polotnoJson_example") // MarketingMaterialTemplatePublishPayload |  (optional)

// Publish a marketing material template.
MarketingMaterialsAPI.putMarketingMaterialsTemplatesUuidPublish(uuid: uuid, marketingMaterialTemplatePublishPayload: marketingMaterialTemplatePublishPayload) { (response, error) in
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
 **uuid** | [**UUID**](.md) | UUID of the marketing material template record. | 
 **marketingMaterialTemplatePublishPayload** | [**MarketingMaterialTemplatePublishPayload**](MarketingMaterialTemplatePublishPayload.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putMarketingMaterialsUuidPublish**
```swift
    open class func putMarketingMaterialsUuidPublish(uuid: UUID, marketingMaterialPublishPayload: MarketingMaterialPublishPayload? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Publish a marketing material.

Publish a marketing material.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Aryeo

let uuid = 987 // UUID | UUID of the marketing material record.
let marketingMaterialPublishPayload = MarketingMaterialPublishPayload(polotnoJson: "polotnoJson_example") // MarketingMaterialPublishPayload |  (optional)

// Publish a marketing material.
MarketingMaterialsAPI.putMarketingMaterialsUuidPublish(uuid: uuid, marketingMaterialPublishPayload: marketingMaterialPublishPayload) { (response, error) in
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
 **uuid** | [**UUID**](.md) | UUID of the marketing material record. | 
 **marketingMaterialPublishPayload** | [**MarketingMaterialPublishPayload**](MarketingMaterialPublishPayload.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

