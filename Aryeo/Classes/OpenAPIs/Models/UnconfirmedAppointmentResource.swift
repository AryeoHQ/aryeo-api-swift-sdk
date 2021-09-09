//
// UnconfirmedAppointmentResource.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** An appointment. */
public struct UnconfirmedAppointmentResource: Codable, Hashable {

    /** What was the state of the request? */
    public var status: String
    public var data: UnconfirmedAppointment?

    public init(status: String, data: UnconfirmedAppointment? = nil) {
        self.status = status
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case status
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(status, forKey: .status)
        try container.encodeIfPresent(data, forKey: .data)
    }
}
