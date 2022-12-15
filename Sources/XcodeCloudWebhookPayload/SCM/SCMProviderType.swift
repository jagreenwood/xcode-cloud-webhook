//
//  SCMProviderType.swift
//  
//
//  Created by Jeremy Greenwood on 12/12/22.
//

import Foundation

public struct SCMProviderType: Codable, Equatable, Sendable {
    public let scmProviderType: String
    public let displayName: String
    public let isOnPremise: Bool

    enum CodingKeys: String, CodingKey {
        case scmProviderType = "scmProviderType"
        case displayName = "displayName"
        case isOnPremise = "isOnPremise"
    }

    public init(
        scmProviderType: String,
        displayName: String,
        isOnPremise: Bool
    ) {
        self.scmProviderType = scmProviderType
        self.displayName = displayName
        self.isOnPremise = isOnPremise
    }
}
