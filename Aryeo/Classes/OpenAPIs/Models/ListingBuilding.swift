//
// ListingBuilding.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Structural data of the primary building on a listing. Includes everything from square footage of certain spaces to construction dates.  */
public struct ListingBuilding: Codable {

    /** Total number of bedrooms. */
    public private(set) var bedrooms: Int?
    /** Sum of the number of bathrooms. Represented as a number in order to support half-baths. */
    public private(set) var bathrooms: Double?
    /** Total number of square feet. */
    public private(set) var squareFeet: Double?
    /** Year the property was built. */
    public private(set) var yearBuilt: Int?

    public init(bedrooms: Int? = nil, bathrooms: Double? = nil, squareFeet: Double? = nil, yearBuilt: Int? = nil) {
        self.bedrooms = bedrooms
        self.bathrooms = bathrooms
        self.squareFeet = squareFeet
        self.yearBuilt = yearBuilt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case bedrooms
        case bathrooms
        case squareFeet = "square_feet"
        case yearBuilt = "year_built"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(bedrooms, forKey: .bedrooms)
        try container.encodeIfPresent(bathrooms, forKey: .bathrooms)
        try container.encodeIfPresent(squareFeet, forKey: .squareFeet)
        try container.encodeIfPresent(yearBuilt, forKey: .yearBuilt)
    }
}

