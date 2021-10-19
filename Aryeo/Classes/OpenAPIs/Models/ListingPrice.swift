//
// ListingPrice.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Valuation data relating to the price of a listing. */
public struct ListingPrice: Codable {

    /** The current price of the listing. */
    public private(set) var listPrice: Int?

    public init(listPrice: Int? = nil) {
        self.listPrice = listPrice
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case listPrice = "list_price"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(listPrice, forKey: .listPrice)
    }
}

