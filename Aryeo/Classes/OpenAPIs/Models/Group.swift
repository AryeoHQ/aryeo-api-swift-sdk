//
// Group.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A collection of users that can interact with the Aryeo platform. Permissions and properties are determined based on the group&#39;s type which can be creator, agent, or brokerage. */
public struct Group: Codable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case creator = "CREATOR"
        case agent = "AGENT"
        case brokerage = "BROKERAGE"
    }
    /** ID of the group. */
    public var id: UUID
    /** The type of the group. Can be CREATOR, AGENT, or BROKERAGE, and may dictate the attributes of the group returned. */
    public var type: ModelType
    /** The name of the group. */
    public var name: String
    /** The email address of a group. */
    public var email: String?
    /** A phone number represented in whichever standards specified by the group, typically ###-###-#### (separated by hyphens). */
    public var phone: String?
    /** The website URL of a group. */
    public var websiteUrl: String?
    /** The logo URL of a group. */
    public var logoUrl: String?
    /** The profile image URL of a real estate agent. Only returned if group's type is AGENT. */
    public var avatarUrl: String?
    /** The name of the brokerage or team of a real estate agent. Only returned if group's type is AGENT. */
    public var officeName: String?
    /** The license number of a real estate agent. Only returned if group's type is AGENT. */
    public var licenseNumber: String?
    public var socialProfiles: SocialProfiles?
    public var defaultOrderForm: OrderForm?
    /** An array of order forms a vendor group provides for placing orders. Only returned if group's type is CREATOR.  */
    public var orderForms: [OrderForm]?
    public var owner: User?
    /** The Aryeo users associated with this group. */
    public var users: [User]?
    /** Does this group represent a brokerage or an agent who belongs to a brokerage? */
    public var isBrokerageOrBrokerageAgent: Bool

    public init(id: UUID, type: ModelType, name: String, email: String? = nil, phone: String? = nil, websiteUrl: String? = nil, logoUrl: String? = nil, avatarUrl: String? = nil, officeName: String? = nil, licenseNumber: String? = nil, socialProfiles: SocialProfiles? = nil, defaultOrderForm: OrderForm? = nil, orderForms: [OrderForm]? = nil, owner: User? = nil, users: [User]? = nil, isBrokerageOrBrokerageAgent: Bool) {
        self.id = id
        self.type = type
        self.name = name
        self.email = email
        self.phone = phone
        self.websiteUrl = websiteUrl
        self.logoUrl = logoUrl
        self.avatarUrl = avatarUrl
        self.officeName = officeName
        self.licenseNumber = licenseNumber
        self.socialProfiles = socialProfiles
        self.defaultOrderForm = defaultOrderForm
        self.orderForms = orderForms
        self.owner = owner
        self.users = users
        self.isBrokerageOrBrokerageAgent = isBrokerageOrBrokerageAgent
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case type
        case name
        case email
        case phone
        case websiteUrl = "website_url"
        case logoUrl = "logo_url"
        case avatarUrl = "avatar_url"
        case officeName = "office_name"
        case licenseNumber = "license_number"
        case socialProfiles = "social_profiles"
        case defaultOrderForm = "default_order_form"
        case orderForms = "order_forms"
        case owner
        case users
        case isBrokerageOrBrokerageAgent = "is_brokerage_or_brokerage_agent"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(type, forKey: .type)
        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(phone, forKey: .phone)
        try container.encodeIfPresent(websiteUrl, forKey: .websiteUrl)
        try container.encodeIfPresent(logoUrl, forKey: .logoUrl)
        try container.encodeIfPresent(avatarUrl, forKey: .avatarUrl)
        try container.encodeIfPresent(officeName, forKey: .officeName)
        try container.encodeIfPresent(licenseNumber, forKey: .licenseNumber)
        try container.encodeIfPresent(socialProfiles, forKey: .socialProfiles)
        try container.encodeIfPresent(defaultOrderForm, forKey: .defaultOrderForm)
        try container.encodeIfPresent(orderForms, forKey: .orderForms)
        try container.encodeIfPresent(owner, forKey: .owner)
        try container.encodeIfPresent(users, forKey: .users)
        try container.encode(isBrokerageOrBrokerageAgent, forKey: .isBrokerageOrBrokerageAgent)
    }
}

