//
//  CiWorkflowAttributes.swift
//  
//
//  Created by Jeremy Greenwood on 12/12/22.
//

import Foundation

public struct CIWorkflowAttributes: Codable, Equatable, Sendable {
    public let name: String
    public let attributesDescription: String
    public let isEnabled: Bool
    public let isLockedForEditing: Bool

    enum CodingKeys: String, CodingKey {
        case name = "name"
        case attributesDescription = "description"
        case isEnabled = "isEnabled"
        case isLockedForEditing = "isLockedForEditing"
    }

    public init(
        name: String,
        attributesDescription: String,
        isEnabled: Bool,
        isLockedForEditing: Bool
    ) {
        self.name = name
        self.attributesDescription = attributesDescription
        self.isEnabled = isEnabled
        self.isLockedForEditing = isLockedForEditing
    }
}
