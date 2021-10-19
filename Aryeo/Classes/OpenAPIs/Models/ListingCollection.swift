//
// ListingCollection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A collection of listings. */
public struct ListingCollection: Codable {

    /** What was the state of the request? */
    public private(set) var status: String
    /**  */
    public private(set) var data: [Listing]?
    public private(set) var meta: PaginationMeta?
    public private(set) var links: PaginationLinks?

    public init(status: String, data: [Listing]? = nil, meta: PaginationMeta? = nil, links: PaginationLinks? = nil) {
        self.status = status
        self.data = data
        self.meta = meta
        self.links = links
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case status
        case data
        case meta
        case links
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(status, forKey: .status)
        try container.encodeIfPresent(data, forKey: .data)
        try container.encodeIfPresent(meta, forKey: .meta)
        try container.encodeIfPresent(links, forKey: .links)
    }
}

