//
// SocialProfiles.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** External profile URLs for an agent or brokerage group. */
public struct SocialProfiles: Codable, Hashable {

    /** URL for Facebook. */
    public var facebookProfileUrl: String?
    /** URL for Instagram. */
    public var instagramProfileUrl: String?
    /** URL for Twitter. */
    public var twitterProfileUrl: String?
    /** URL for LinkedIn. */
    public var linkedinProfileUrl: String?
    /** URL for Zillow. */
    public var zillowProfileUrl: String?

    public init(facebookProfileUrl: String? = nil, instagramProfileUrl: String? = nil, twitterProfileUrl: String? = nil, linkedinProfileUrl: String? = nil, zillowProfileUrl: String? = nil) {
        self.facebookProfileUrl = facebookProfileUrl
        self.instagramProfileUrl = instagramProfileUrl
        self.twitterProfileUrl = twitterProfileUrl
        self.linkedinProfileUrl = linkedinProfileUrl
        self.zillowProfileUrl = zillowProfileUrl
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case facebookProfileUrl = "facebook_profile_url"
        case instagramProfileUrl = "instagram_profile_url"
        case twitterProfileUrl = "twitter_profile_url"
        case linkedinProfileUrl = "linkedin_profile_url"
        case zillowProfileUrl = "zillow_profile_url"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(facebookProfileUrl, forKey: .facebookProfileUrl)
        try container.encodeIfPresent(instagramProfileUrl, forKey: .instagramProfileUrl)
        try container.encodeIfPresent(twitterProfileUrl, forKey: .twitterProfileUrl)
        try container.encodeIfPresent(linkedinProfileUrl, forKey: .linkedinProfileUrl)
        try container.encodeIfPresent(zillowProfileUrl, forKey: .zillowProfileUrl)
    }
}

