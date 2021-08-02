//
// ListingLot.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Parcel data of the lot of a listing. Includes nearly everything about the land that makes up the listing. */
public struct ListingLot: Codable, Hashable {

    /** Total area of the lot of a listing in acres.  */
    public var sizeAcres: Double?
    /** Number of parking spaces. */
    public var openParkingSpaces: Double?

    public init(sizeAcres: Double? = nil, openParkingSpaces: Double? = nil) {
        self.sizeAcres = sizeAcres
        self.openParkingSpaces = openParkingSpaces
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case sizeAcres = "size_acres"
        case openParkingSpaces = "open_parking_spaces"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(sizeAcres, forKey: .sizeAcres)
        try container.encodeIfPresent(openParkingSpaces, forKey: .openParkingSpaces)
    }
}

