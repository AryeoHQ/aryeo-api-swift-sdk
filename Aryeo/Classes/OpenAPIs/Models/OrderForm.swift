//
// OrderForm.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A mechanism for placing new orders on the Aryeo platform.  */
public struct OrderForm: Codable {

    /** ID of the order form. UUID Version 4. */
    public private(set) var id: UUID
    /** The title or name of the order form. */
    public private(set) var title: String?
    /** A URL of a publicly-accessible webpage for this order form. */
    public private(set) var url: String

    public init(id: UUID, title: String? = nil, url: String) {
        self.id = id
        self.title = title
        self.url = url
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case title
        case url
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encode(url, forKey: .url)
    }
}

