//
// OrderItem.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A product associated with an order. */
public struct OrderItem: Codable {

    /** ID of the item. UUID Version 4. */
    public private(set) var id: UUID
    /** The title of the item. */
    public private(set) var title: String?
    /** The description of the item. */
    public private(set) var description: String?
    /** A positive integer in the smallest currency unit (that is, 100 cents for $1.00) representing the cost of a single instance of this item. This is multiplied by the quantity to calculate what was or will be charged. */
    public private(set) var amount: Int?
    /** A positive integer representing the number of instances of this item that was or will be charged. */
    public private(set) var quantity: Int?

    public init(id: UUID, title: String? = nil, description: String? = nil, amount: Int? = nil, quantity: Int? = nil) {
        self.id = id
        self.title = title
        self.description = description
        self.amount = amount
        self.quantity = quantity
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case title
        case description
        case amount
        case quantity
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(amount, forKey: .amount)
        try container.encodeIfPresent(quantity, forKey: .quantity)
    }
}

