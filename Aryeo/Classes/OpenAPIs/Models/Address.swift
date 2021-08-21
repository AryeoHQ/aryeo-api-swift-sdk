//
// Address.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A street address and additional metadata about a location. */
public struct Address: Codable, Hashable {

    /** ID of the address. UUID Version 4. */
    public var id: UUID
    /** The geographic latitude of some reference point of the location, specified in degrees and decimal parts. Positive numbers must not include the plus symbol. */
    public var latitude: Double
    /** The geographic longitude of some reference point of the location, specified in degrees and decimal parts. Positive numbers must not include the plus symbol. */
    public var longitude: Double
    /** The street number portion of a location's address. In some areas, the street number may contain non-numeric characters. This field can also contain extensions and modifiers to the street number, such as \"1/2\" or \"-B\". */
    public var streetNumber: String?
    /** The street name portion of a location's address. */
    public var streetName: String?
    /** The number or portion of a larger building or complex. Examples are: \"APT G\", \"55\", etc. */
    public var unitNumber: String?
    /** The postal code portion of a location's address. */
    public var postalCode: String?
    /** The city of a location's address. */
    public var city: String?
    /** A sub-section or area of a defined city. Examples would be SoHo in New York, NY, Ironbound in Newark, NJ or Inside the Beltway. */
    public var cityRegion: String?
    /** The County, Parish or other regional authority of the location. */
    public var countyOrParish: String?
    /** The ISO 3166-2 subdivision code for the state or province of the location. For example, “MA” for Massachusetts, United States. */
    public var stateOrProvince: String?
    /** A sub-section or area of a defined state or province. Examples would be the Keys in FL or Hudson Valley in NY. */
    public var stateOrProvinceRegion: String?
    /** The ISO 3166-1 country code for this for the country of the location. */
    public var country: String?
    /** A sub-section or area of a defined country. Examples would be Napa Valley in the US, or the Amalfi Coast in Italy. */
    public var countryRegion: String?
    /** Unparsed text representation of the address.  */
    public var unparsedAddress: String?
    /** Unparsed text representation of the first part of the address, typically including the street number, street name, and unit number if applicable.   */
    public var unparsedAddressPartOne: String?
    /** Unparsed text representation of the second part of the address, typically including the city, state or province, and postal code.   */
    public var unparsedAddressPartTwo: String?

    public init(id: UUID, latitude: Double, longitude: Double, streetNumber: String? = nil, streetName: String? = nil, unitNumber: String? = nil, postalCode: String? = nil, city: String? = nil, cityRegion: String? = nil, countyOrParish: String? = nil, stateOrProvince: String? = nil, stateOrProvinceRegion: String? = nil, country: String? = nil, countryRegion: String? = nil, unparsedAddress: String? = nil, unparsedAddressPartOne: String? = nil, unparsedAddressPartTwo: String? = nil) {
        self.id = id
        self.latitude = latitude
        self.longitude = longitude
        self.streetNumber = streetNumber
        self.streetName = streetName
        self.unitNumber = unitNumber
        self.postalCode = postalCode
        self.city = city
        self.cityRegion = cityRegion
        self.countyOrParish = countyOrParish
        self.stateOrProvince = stateOrProvince
        self.stateOrProvinceRegion = stateOrProvinceRegion
        self.country = country
        self.countryRegion = countryRegion
        self.unparsedAddress = unparsedAddress
        self.unparsedAddressPartOne = unparsedAddressPartOne
        self.unparsedAddressPartTwo = unparsedAddressPartTwo
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case latitude
        case longitude
        case streetNumber = "street_number"
        case streetName = "street_name"
        case unitNumber = "unit_number"
        case postalCode = "postal_code"
        case city
        case cityRegion = "city_region"
        case countyOrParish = "county_or_parish"
        case stateOrProvince = "state_or_province"
        case stateOrProvinceRegion = "state_or_province_region"
        case country
        case countryRegion = "country_region"
        case unparsedAddress = "unparsed_address"
        case unparsedAddressPartOne = "unparsed_address_part_one"
        case unparsedAddressPartTwo = "unparsed_address_part_two"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(latitude, forKey: .latitude)
        try container.encode(longitude, forKey: .longitude)
        try container.encodeIfPresent(streetNumber, forKey: .streetNumber)
        try container.encodeIfPresent(streetName, forKey: .streetName)
        try container.encodeIfPresent(unitNumber, forKey: .unitNumber)
        try container.encodeIfPresent(postalCode, forKey: .postalCode)
        try container.encodeIfPresent(city, forKey: .city)
        try container.encodeIfPresent(cityRegion, forKey: .cityRegion)
        try container.encodeIfPresent(countyOrParish, forKey: .countyOrParish)
        try container.encodeIfPresent(stateOrProvince, forKey: .stateOrProvince)
        try container.encodeIfPresent(stateOrProvinceRegion, forKey: .stateOrProvinceRegion)
        try container.encodeIfPresent(country, forKey: .country)
        try container.encodeIfPresent(countryRegion, forKey: .countryRegion)
        try container.encodeIfPresent(unparsedAddress, forKey: .unparsedAddress)
        try container.encodeIfPresent(unparsedAddressPartOne, forKey: .unparsedAddressPartOne)
        try container.encodeIfPresent(unparsedAddressPartTwo, forKey: .unparsedAddressPartTwo)
    }
}
