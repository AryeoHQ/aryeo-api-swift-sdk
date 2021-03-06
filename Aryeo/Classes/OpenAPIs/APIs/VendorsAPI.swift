//
// VendorsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class VendorsAPI {

    /**
     List all vendors.
     
     - parameter include: (query) Comma separated list of optional data to include in the response. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getVendors(include: String? = nil, apiResponseQueue: DispatchQueue = Aryeo.apiResponseQueue, completion: @escaping ((_ data: GroupCollection?, _ error: Error?) -> Void)) {
        getVendorsWithRequestBuilder(include: include).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List all vendors.
     - GET /vendors
     - Lists all vendors available to a group.
     - BASIC:
       - type: http
       - name: Token
     - parameter include: (query) Comma separated list of optional data to include in the response. (optional)
     - returns: RequestBuilder<GroupCollection> 
     */
    open class func getVendorsWithRequestBuilder(include: String? = nil) -> RequestBuilder<GroupCollection> {
        let localVariablePath = "/vendors"
        let localVariableURLString = Aryeo.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "include": include?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GroupCollection>.Type = Aryeo.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Retrieve a vendor.
     
     - parameter vendorId: (path) The ID of the group that is associated as a vendor. UUID Version 4. 
     - parameter include: (query) Comma separated list of optional data to include in the response. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getVendorsId(vendorId: UUID, include: String? = nil, apiResponseQueue: DispatchQueue = Aryeo.apiResponseQueue, completion: @escaping ((_ data: GroupResource?, _ error: Error?) -> Void)) {
        getVendorsIdWithRequestBuilder(vendorId: vendorId, include: include).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Retrieve a vendor.
     - GET /vendors/{vendor_id}
     - Retrieves the details of a vendor with the given ID.
     - BASIC:
       - type: http
       - name: Token
     - parameter vendorId: (path) The ID of the group that is associated as a vendor. UUID Version 4. 
     - parameter include: (query) Comma separated list of optional data to include in the response. (optional)
     - returns: RequestBuilder<GroupResource> 
     */
    open class func getVendorsIdWithRequestBuilder(vendorId: UUID, include: String? = nil) -> RequestBuilder<GroupResource> {
        var localVariablePath = "/vendors/{vendor_id}"
        let vendorIdPreEscape = "\(APIHelper.mapValueToPathItem(vendorId))"
        let vendorIdPostEscape = vendorIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{vendor_id}", with: vendorIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = Aryeo.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "include": include?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GroupResource>.Type = Aryeo.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
