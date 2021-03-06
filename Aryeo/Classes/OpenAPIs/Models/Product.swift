//
// Product.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A product available for purchase via an order. */
public struct Product: Codable {

    public enum ModelType: String, Codable, CaseIterable {
        case main = "MAIN"
        case addon = "ADDON"
    }
    /** ID of the product. UUID Version 4. */
    public private(set) var id: UUID
    /** The title of the product. */
    public private(set) var title: String
    /** The description of the product. */
    public private(set) var description: String?
    /** The active status of a product. */
    public private(set) var active: Bool?
    /** The type of product. */
    public private(set) var type: ModelType
    public private(set) var variants: [ProductVariant]?
    public private(set) var categories: [ProductCategory]?

    public init(id: UUID, title: String, description: String? = nil, active: Bool? = nil, type: ModelType, variants: [ProductVariant]? = nil, categories: [ProductCategory]? = nil) {
        self.id = id
        self.title = title
        self.description = description
        self.active = active
        self.type = type
        self.variants = variants
        self.categories = categories
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case title
        case description
        case active
        case type
        case variants
        case categories
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(title, forKey: .title)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(active, forKey: .active)
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(variants, forKey: .variants)
        try container.encodeIfPresent(categories, forKey: .categories)
    }
}

