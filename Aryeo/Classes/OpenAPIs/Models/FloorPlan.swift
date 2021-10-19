//
// FloorPlan.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A scale diagram of the arrangement of a building. */
public struct FloorPlan: Codable {

    /** ID of the floor plan. UUID Version 4. */
    public private(set) var id: UUID
    /** A URL for the original, full-resolution version of the floor plan. Useful for downloading. */
    public private(set) var originalUrl: String
    /** A URL for a large version of the floor plan. */
    public private(set) var largeUrl: String
    /** A URL for a thumbnail-sized version of the floor plan. */
    public private(set) var thumbnailUrl: String
    /** The title (or caption) of the floor plan. */
    public private(set) var title: String?
    /** Index order position of the floor plan. */
    public private(set) var index: Int?

    public init(id: UUID, originalUrl: String, largeUrl: String, thumbnailUrl: String, title: String? = nil, index: Int? = nil) {
        self.id = id
        self.originalUrl = originalUrl
        self.largeUrl = largeUrl
        self.thumbnailUrl = thumbnailUrl
        self.title = title
        self.index = index
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case originalUrl = "original_url"
        case largeUrl = "large_url"
        case thumbnailUrl = "thumbnail_url"
        case title
        case index
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(originalUrl, forKey: .originalUrl)
        try container.encode(largeUrl, forKey: .largeUrl)
        try container.encode(thumbnailUrl, forKey: .thumbnailUrl)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(index, forKey: .index)
    }
}

