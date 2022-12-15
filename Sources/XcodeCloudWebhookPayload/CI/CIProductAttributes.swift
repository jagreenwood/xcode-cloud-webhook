//
//  CiProductAttributes.swift
//  
//
//  Created by Jeremy Greenwood on 12/12/22.
//

import Foundation

public struct CIProductAttributes: Codable, Equatable, Sendable {
    public let name: String
    public let createdDate: String
    public let productType: String

    enum CodingKeys: String, CodingKey {
        case name = "name"
        case createdDate = "createdDate"
        case productType = "productType"
    }

    public init(
        name: String,
        createdDate: String,
        productType: String
    ) {
        self.name = name
        self.createdDate = createdDate
        self.productType = productType
    }
}
