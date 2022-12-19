//
//  Provider.swift
//  
//
//  Created by Jeremy Greenwood on 12/12/22.
//

import Foundation

public struct Provider: Codable, Equatable, Sendable {
    public let type: String
    public let attributes: ProviderAttributes

    enum CodingKeys: String, CodingKey {
        case type = "type"
        case attributes = "attributes"
    }

    public init(
        type: String,
        attributes: ProviderAttributes
    ) {
        self.type = type
        self.attributes = attributes
    }
}
