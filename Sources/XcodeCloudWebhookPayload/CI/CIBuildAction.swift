//
//  CiBuildAction.swift
//  
//
//  Created by Jeremy Greenwood on 12/12/22.
//

import Foundation

public struct CIBuildAction: Codable, Equatable, Sendable {
    public let id: String
    public let type: String
    public let attributes: CIBuildActionAttributes
    public let relationships: Relationships

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case type = "type"
        case attributes = "attributes"
        case relationships = "relationships"
    }

    public init(
        id: String,
        type: String,
        attributes: CIBuildActionAttributes,
        relationships: Relationships
    ) {
        self.id = id
        self.type = type
        self.attributes = attributes
        self.relationships = relationships
    }
}
