//
//  GitReference.swift
//  
//
//  Created by Jeremy Greenwood on 12/12/22.
//

import Foundation

public struct GitReference: Codable, Equatable, Sendable {
    public let id: String
    public let type: String
    public let attributes: GitReferenceAttributes

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case type = "type"
        case attributes = "attributes"
    }

    public init(
        id: String,
        type: String,
        attributes: GitReferenceAttributes
    ) {
        self.id = id
        self.type = type
        self.attributes = attributes
    }
}
