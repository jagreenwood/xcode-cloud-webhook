//
//  SCMProviderAttributes.swift
//  
//
//  Created by Jeremy Greenwood on 12/12/22.
//

import Foundation

public struct SCMProviderAttributes: Codable, Equatable, Sendable {
    public let scmProviderType: SCMProviderType
    public let endpoint: String

    enum CodingKeys: String, CodingKey {
        case scmProviderType = "scmProviderType"
        case endpoint = "endpoint"
    }

    public init(
        scmProviderType: SCMProviderType,
        endpoint: String
    ) {
        self.scmProviderType = scmProviderType
        self.endpoint = endpoint
    }
}
