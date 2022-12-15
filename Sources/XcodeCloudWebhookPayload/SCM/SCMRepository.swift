//
//  SCMRepository.swift
//  
//
//  Created by Jeremy Greenwood on 12/12/22.
//

import Foundation

public struct SCMRepository: Codable, Equatable, Sendable {
    public let id: String
    public let type: String
    public let attributes: SCMRepositoryAttributes

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case type = "type"
        case attributes = "attributes"
    }

    public init(
        id: String,
        type: String,
        attributes: SCMRepositoryAttributes
    ) {
        self.id = id
        self.type = type
        self.attributes = attributes
    }
}
