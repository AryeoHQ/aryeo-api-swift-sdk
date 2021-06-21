//
// MarketingMaterialsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class MarketingMaterialsAPI {

    /**
     Publish a marketing material.
     
     - parameter uuid: (path) UUID of the marketing material record. 
     - parameter marketingMaterialPublishPayload: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func putMarketingMaterialsUuidPublish(uuid: UUID, marketingMaterialPublishPayload: MarketingMaterialPublishPayload? = nil, apiResponseQueue: DispatchQueue = Aryeo.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        putMarketingMaterialsUuidPublishWithRequestBuilder(uuid: uuid, marketingMaterialPublishPayload: marketingMaterialPublishPayload).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Publish a marketing material.
     - PUT /marketing-materials/{uuid}/publish
     - Publish a marketing material.
     - BASIC:
       - type: http
       - name: JWT
     - parameter uuid: (path) UUID of the marketing material record. 
     - parameter marketingMaterialPublishPayload: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func putMarketingMaterialsUuidPublishWithRequestBuilder(uuid: UUID, marketingMaterialPublishPayload: MarketingMaterialPublishPayload? = nil) -> RequestBuilder<Void> {
        var path = "/marketing-materials/{uuid}/publish"
        let uuidPreEscape = "\(APIHelper.mapValueToPathItem(uuid))"
        let uuidPostEscape = uuidPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{uuid}", with: uuidPostEscape, options: .literal, range: nil)
        let URLString = Aryeo.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: marketingMaterialPublishPayload)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = Aryeo.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "PUT", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }
}