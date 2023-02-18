//
//  ProviderType.swift
//  
//
//  Created by Jeremy Greenwood on 12/12/22.
//

import Foundation

public struct ProviderType: Codable, Equatable, Sendable {
    public let type: `Type`
    public let displayName: String
    public let isOnPremise: Bool

    enum CodingKeys: String, CodingKey {
        case type = "scmProviderType"
        case displayName = "displayName"
        case isOnPremise = "isOnPremise"
    }

    public enum `Type`: String, Codable, Equatable, Sendable {
        case BITBUCKET_CLOUD
        case BITBUCKET_SERVER
        case GITHUB_CLOUD
        case GITHUB_ENTERPRISE
        case GITLAB_CLOUD
        case GITLAB_SELF_MANAGED
    }

    public init(
        type: `Type`,
        displayName: String,
        isOnPremise: Bool
    ) {
        self.type = type
        self.displayName = displayName
        self.isOnPremise = isOnPremise
    }
}
