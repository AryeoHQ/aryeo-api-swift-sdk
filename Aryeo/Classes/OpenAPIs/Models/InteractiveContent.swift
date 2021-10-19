//
// InteractiveContent.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A 3D virtual tour. */
public struct InteractiveContent: Codable {

    public enum DisplayType: String, Codable, CaseIterable {
        case branded = "BRANDED"
        case unbranded = "UNBRANDED"
        case both = "BOTH"
    }
    public enum ContentType: String, Codable, CaseIterable {
        case matterport = "MATTERPORT"
        case other = "OTHER"
    }
    /** ID of the content. UUID Version 4. */
    public private(set) var id: UUID
    /** Is the content branded, unbranded, or both? */
    public private(set) var displayType: DisplayType
    /** The type of interactive content. */
    public private(set) var contentType: ContentType
    /** URL for the content. */
    public private(set) var url: String
    /** A URL for a thumbnail-sized preview of the content. */
    public private(set) var thumbnailUrl: String?

    public init(id: UUID, displayType: DisplayType, contentType: ContentType, url: String, thumbnailUrl: String? = nil) {
        self.id = id
        self.displayType = displayType
        self.contentType = contentType
        self.url = url
        self.thumbnailUrl = thumbnailUrl
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case displayType = "display_type"
        case contentType = "content_type"
        case url
        case thumbnailUrl = "thumbnail_url"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(displayType, forKey: .displayType)
        try container.encode(contentType, forKey: .contentType)
        try container.encode(url, forKey: .url)
        try container.encodeIfPresent(thumbnailUrl, forKey: .thumbnailUrl)
    }
}

