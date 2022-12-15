//
//  Webhook.swift
//  
//
//  Created by Jeremy Greenwood on 12/12/22.
//

import Foundation

public struct Webhook: Codable, Equatable, Sendable {
    public let id: String
    public let name: String
    public let url: String

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case url = "url"
    }

    public init(
        id: String,
        name: String,
        url: String
    ) {
        self.id = id
        self.name = name
        self.url = url
    }
}
