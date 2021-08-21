//
// AppointmentCollection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A collection of appointments. */
public struct AppointmentCollection: Codable, Hashable {

    /** What was the state of the request? */
    public var status: String
    /**  */
    public var data: [Appointment]?
    public var meta: PaginationMeta?
    public var links: PaginationLinks?

    public init(status: String, data: [Appointment]? = nil, meta: PaginationMeta? = nil, links: PaginationLinks? = nil) {
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

