//
// GroupAgentProperties.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A subset of group properties relevant to agents. */
public struct GroupAgentProperties: Codable, Hashable {

    /** Name of brokerage. */
    public var brokerageName: String?
    /** Agent's license number. */
    public var agentLicenseNumber: String?
    /** Agent's profile image URL. */
    public var agentAvatar: String?

    public init(brokerageName: String? = nil, agentLicenseNumber: String? = nil, agentAvatar: String? = nil) {
        self.brokerageName = brokerageName
        self.agentLicenseNumber = agentLicenseNumber
        self.agentAvatar = agentAvatar
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case brokerageName = "brokerage_name"
        case agentLicenseNumber = "agent_license_number"
        case agentAvatar = "agent_avatar"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(brokerageName, forKey: .brokerageName)
        try container.encodeIfPresent(agentLicenseNumber, forKey: .agentLicenseNumber)
        try container.encodeIfPresent(agentAvatar, forKey: .agentAvatar)
    }
}

