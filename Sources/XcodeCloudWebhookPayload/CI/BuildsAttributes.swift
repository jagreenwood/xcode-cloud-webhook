//
//  BuildsAttributes.swift
//  
//
//  Created by Jeremy Greenwood on 12/12/22.
//

import Foundation

public struct BuildsAttributes: Codable, Equatable, Sendable {
    public let platform: String

    enum CodingKeys: String, CodingKey {
        case platform = "platform"
    }

    public init(platform: String) {
        self.platform = platform
    }
}
