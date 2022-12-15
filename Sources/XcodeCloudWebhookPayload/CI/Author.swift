//
//  Author.swift
//  
//
//  Created by Jeremy Greenwood on 12/12/22.
//

import Foundation

public struct Author: Codable, Equatable, Sendable {
    public let displayName: String

    enum CodingKeys: String, CodingKey {
        case displayName = "displayName"
    }

    public init(displayName: String) {
        self.displayName = displayName
    }
}
