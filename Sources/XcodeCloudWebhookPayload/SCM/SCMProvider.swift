//
//  SCMProvider.swift
//  
//
//  Created by Jeremy Greenwood on 12/12/22.
//

import Foundation

public struct SCMProvider: Codable, Equatable, Sendable {
    public let type: String
    public let attributes: SCMProviderAttributes

    enum CodingKeys: String, CodingKey {
        case type = "type"
        case attributes = "attributes"
    }

    public init(
        type: String,
        attributes: SCMProviderAttributes
    ) {
        self.type = type
        self.attributes = attributes
    }
}
