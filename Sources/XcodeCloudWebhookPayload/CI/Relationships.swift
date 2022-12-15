//
//  Relationships.swift
//  
//
//  Created by Jeremy Greenwood on 12/12/22.
//

import Foundation

public struct Relationships: Codable, Equatable, Sendable {
    public let builds: Builds?

    enum CodingKeys: String, CodingKey {
        case builds = "builds"
    }

    public init(builds: Builds?) {
        self.builds = builds
    }
}

