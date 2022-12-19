//
//  ProviderAttributes.swift
//  
//
//  Created by Jeremy Greenwood on 12/12/22.
//

import Foundation

public struct ProviderAttributes: Codable, Equatable, Sendable {
    public let providerType: ProviderType
    public let endpoint: String

    enum CodingKeys: String, CodingKey {
        case providerType = "scmProviderType"
        case endpoint = "endpoint"
    }

    public init(
        providerType: ProviderType,
        endpoint: String
    ) {
        self.providerType = providerType
        self.endpoint = endpoint
    }
}
