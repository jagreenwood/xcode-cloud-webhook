//
//  ProviderType.swift
//  
//
//  Created by Jeremy Greenwood on 12/12/22.
//

import Foundation

public struct ProviderType: Codable, Equatable, Sendable {
    public let providerType: String
    public let displayName: String
    public let isOnPremise: Bool

    enum CodingKeys: String, CodingKey {
        case providerType = "scmProviderType"
        case displayName = "displayName"
        case isOnPremise = "isOnPremise"
    }

    public init(
        providerType: String,
        displayName: String,
        isOnPremise: Bool
    ) {
        self.providerType = providerType
        self.displayName = displayName
        self.isOnPremise = isOnPremise
    }
}
