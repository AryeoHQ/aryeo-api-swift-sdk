//
// Listing.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A real-estate property. */
public struct Listing: Codable, Hashable {

    public enum DeliveryStatus: String, Codable, CaseIterable {
        case delivered = "delivered"
        case undelivered = "undelivered"
    }
    /** ID of the listing. */
    public var id: UUID
    public var address: PartialAddress
    /** Has this listing been delivered? */
    public var deliveryStatus: DeliveryStatus
    /** Thumbnail URL for the listing. */
    public var thumbnailUrl: String?
    public var agent: Group?
    public var coAgent: Group?
    /** images */
    public var images: [Image]?
    /** videos */
    public var videos: [Video]?
    /** floor_plans */
    public var floorPlans: [FloorPlan]?
    public var propertyWebsites: PropertyWebsites?
    /** interactive_content */
    public var interactiveContent: [InteractiveContent]?
    public var propertyDetails: PropertyDetails?
    /** Are downloads enabled for this listing? */
    public var downloadsEnabled: Bool
    /** orders */
    public var orders: [Order]?

    public init(id: UUID, address: PartialAddress, deliveryStatus: DeliveryStatus, thumbnailUrl: String? = nil, agent: Group? = nil, coAgent: Group? = nil, images: [Image]? = nil, videos: [Video]? = nil, floorPlans: [FloorPlan]? = nil, propertyWebsites: PropertyWebsites? = nil, interactiveContent: [InteractiveContent]? = nil, propertyDetails: PropertyDetails? = nil, downloadsEnabled: Bool, orders: [Order]? = nil) {
        self.id = id
        self.address = address
        self.deliveryStatus = deliveryStatus
        self.thumbnailUrl = thumbnailUrl
        self.agent = agent
        self.coAgent = coAgent
        self.images = images
        self.videos = videos
        self.floorPlans = floorPlans
        self.propertyWebsites = propertyWebsites
        self.interactiveContent = interactiveContent
        self.propertyDetails = propertyDetails
        self.downloadsEnabled = downloadsEnabled
        self.orders = orders
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case address
        case deliveryStatus = "delivery_status"
        case thumbnailUrl = "thumbnail_url"
        case agent
        case coAgent = "co_agent"
        case images
        case videos
        case floorPlans = "floor_plans"
        case propertyWebsites = "property_websites"
        case interactiveContent = "interactive_content"
        case propertyDetails = "property_details"
        case downloadsEnabled = "downloads_enabled"
        case orders
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(address, forKey: .address)
        try container.encode(deliveryStatus, forKey: .deliveryStatus)
        try container.encodeIfPresent(thumbnailUrl, forKey: .thumbnailUrl)
        try container.encodeIfPresent(agent, forKey: .agent)
        try container.encodeIfPresent(coAgent, forKey: .coAgent)
        try container.encodeIfPresent(images, forKey: .images)
        try container.encodeIfPresent(videos, forKey: .videos)
        try container.encodeIfPresent(floorPlans, forKey: .floorPlans)
        try container.encodeIfPresent(propertyWebsites, forKey: .propertyWebsites)
        try container.encodeIfPresent(interactiveContent, forKey: .interactiveContent)
        try container.encodeIfPresent(propertyDetails, forKey: .propertyDetails)
        try container.encode(downloadsEnabled, forKey: .downloadsEnabled)
        try container.encodeIfPresent(orders, forKey: .orders)
    }
}
