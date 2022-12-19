//
//  ProductAttributes.swift
//  
//
//  Created by Jeremy Greenwood on 12/12/22.
//

import Foundation

public struct ProductAttributes: Codable, Equatable, Sendable {
    public let name: String
    @DateCoding public var createdDate: Date
    public let productType: ProductType

    enum CodingKeys: String, CodingKey {
        case name = "name"
        case createdDate = "createdDate"
        case productType = "productType"
    }

    public init(
        name: String,
        createdDate: Date,
        productType: ProductType
    ) {
        self.name = name
        self.createdDate = createdDate
        self.productType = productType
    }
}
