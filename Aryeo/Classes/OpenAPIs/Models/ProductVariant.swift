//
// ProductVariant.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A variant of a product. */
public struct ProductVariant: Codable, Hashable {

    /** ID of the product variant. UUID Version 4. */
    public var id: UUID
    /** The title of the product variant. */
    public var title: String
    /** A positive integer in the smallest currency unit (that is, 100 cents for $1.00) representing the price of the product variant. */
    public var price: Int

    public init(id: UUID, title: String, price: Int) {
        self.id = id
        self.title = title
        self.price = price
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case title
        case price
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(title, forKey: .title)
        try container.encode(price, forKey: .price)
    }
}

