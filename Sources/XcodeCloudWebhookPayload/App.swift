//
//  App.swift
//  
//
//  Created by Jeremy Greenwood on 12/12/22.
//

import Foundation

public struct App: Codable, Equatable, Sendable {
    public let id: String
    public let type: String

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case type = "type"
    }

    public init(
        id: String,
        type: String
    ) {
        self.id = id
        self.type = type
    }
}
