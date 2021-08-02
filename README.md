# Aryeo SDK

## Introduction

This is an auto-generated client SDK for interfacing with the Aryeo API. We support a variety of languages and frameworks that are a great starting point for experimenting with the API. If there is an additional language or framework that you want to see supported, then please reach out and make a contribution!

<p align="center"> <a href="https://github.com/AryeoHQ/aryeo-api-dart-sdk"><img src="https://raw.githubusercontent.com/AryeoHQ/aryeo-api-docs/master/public/images/dart.svg" alt="Dart" width="44" style="padding:10px;border: 1px solid #d3d3d3;border-radius: 5px;margin:4px;"/></a> <a href="https://github.com/AryeoHQ/aryeo-api-go-sdk"><img src="https://raw.githubusercontent.com/AryeoHQ/aryeo-api-docs/master/public/images/go.svg" alt="Go" width="44" style="padding:10px;border: 1px solid #d3d3d3;border-radius: 5px;margin:4px;"/></a> <a href="https://github.com/AryeoHQ/aryeo-api-js-sdk"><img src="https://raw.githubusercontent.com/AryeoHQ/aryeo-api-docs/master/public/images/js.svg" alt="Node JS" width="44" style="padding:10px;border: 1px solid #d3d3d3;border-radius: 5px;margin:4px;"/></a> <a href="https://github.com/AryeoHQ/aryeo-api-php-sdk"><img src="https://raw.githubusercontent.com/AryeoHQ/aryeo-api-docs/master/public/images/php.svg" alt="PHP" width="44" style="padding:10px;border: 1px solid #d3d3d3;border-radius: 5px;margin:4px;"/></a> <a href="https://github.com/AryeoHQ/aryeo-api-ruby-sdk"><img src="https://raw.githubusercontent.com/AryeoHQ/aryeo-api-docs/master/public/images/ruby.svg" alt="Ruby" width="44" style="padding:10px;border: 1px solid #d3d3d3;border-radius: 5px;margin:4px;"/></a> <a href="https://github.com/AryeoHQ/aryeo-api-rust-sdk"><img src="https://raw.githubusercontent.com/AryeoHQ/aryeo-api-docs/master/public/images/rust.svg" alt="Rust" width="44" style="padding:10px;border: 1px solid #d3d3d3;border-radius: 5px;margin:4px;"/></a> <a href="https://github.com/AryeoHQ/aryeo-api-swift-sdk"><img src="https://raw.githubusercontent.com/AryeoHQ/aryeo-api-docs/master/public/images/swift.svg" alt="Swift" width="44" style="padding:10px;border: 1px solid #d3d3d3;border-radius: 5px;margin:4px;"/></a> </p>

## Authentication

To start using the Aryeo API, you will need to generate an API key from your group's developer settings. Then, make sure to provide your API key as a bearer token. Requests made without an API key will result in a `401 Unauthorized` error.

Example: `Authorization: Bearer {API_KEY}`

## Installation

Add the following to `Package.swift`:

```swift
    dependencies: [        
        .package(name: "Aryeo", url: "https://github.com/AryeoHQ/aryeo-api-swift-sdk", .branch("master")),
    ],
```

## Getting Started

```swift
import Foundation
import Aryeo

let jwt = "API_KEY"
let uuid = UUID(uuidString: "UUID")!

let dispatchGroup = DispatchGroup()
dispatchGroup.enter()

ListingsAPI.getListingsIdWithRequestBuilder(uuid: uuid)
    .addHeader(name: "Accept", value: "application/json")
    .addHeader(name: "Authorization", value: "Bearer \(jwt)")
    .execute(Aryeo.apiResponseQueue) { result -> Void in
    switch result {
    case let .success(response):
        dump(response.body?.data?.address.addressLine1)
        dispatchGroup.leave()
    case let .failure(error):
        dump(error)
        dispatchGroup.leave()
    }
}

dispatchGroup.notify(queue: DispatchQueue.main) {
    exit(EXIT_SUCCESS)
}

dispatchMain()
```

## Documentation for API Endpoints

All URIs are relative to *https://api.aryeo.com/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ListingsAPI* | [**getListings**](docs/ListingsAPI.md#getlistings) | **GET** /listings | Get the listings available to a group.
*ListingsAPI* | [**getListingsId**](docs/ListingsAPI.md#getlistingsid) | **GET** /listings/{listing_id} | Get information about a listing.
*OrdersAPI* | [**getOrders**](docs/OrdersAPI.md#getorders) | **GET** /orders | Get orders available to a group.
*OrdersAPI* | [**postOrders**](docs/OrdersAPI.md#postorders) | **POST** /orders | Create an order.
*VendorsAPI* | [**getVendors**](docs/VendorsAPI.md#getvendors) | **GET** /vendors | Get vendors available to a group.
*VendorsAPI* | [**getVendorsId**](docs/VendorsAPI.md#getvendorsid) | **GET** /vendors/{vendor_id} | Get vendors available to a group.


## Documentation For Models

 - [Address](docs/Address.md)
 - [ApiError](docs/ApiError.md)
 - [ApiFail](docs/ApiFail.md)
 - [FloorPlan](docs/FloorPlan.md)
 - [Group](docs/Group.md)
 - [GroupCollection](docs/GroupCollection.md)
 - [GroupResource](docs/GroupResource.md)
 - [Image](docs/Image.md)
 - [InteractiveContent](docs/InteractiveContent.md)
 - [Listing](docs/Listing.md)
 - [ListingBuilding](docs/ListingBuilding.md)
 - [ListingCollection](docs/ListingCollection.md)
 - [ListingLot](docs/ListingLot.md)
 - [ListingPrice](docs/ListingPrice.md)
 - [ListingResource](docs/ListingResource.md)
 - [Order](docs/Order.md)
 - [OrderCollection](docs/OrderCollection.md)
 - [OrderForm](docs/OrderForm.md)
 - [OrderPostPayload](docs/OrderPostPayload.md)
 - [OrderResource](docs/OrderResource.md)
 - [PaginationLinks](docs/PaginationLinks.md)
 - [PaginationMeta](docs/PaginationMeta.md)
 - [PropertyWebsite](docs/PropertyWebsite.md)
 - [SocialProfiles](docs/SocialProfiles.md)
 - [User](docs/User.md)
 - [Video](docs/Video.md)


## Documentation For Authorization


## Token

- **Type**: HTTP basic authentication


## Author

jarrod@aryeo.com
