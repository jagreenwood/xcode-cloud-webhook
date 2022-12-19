//
//  GitReferenceAttributes.swift
//  
//
//  Created by Jeremy Greenwood on 12/12/22.
//

import Foundation

public struct GitReferenceAttributes: Codable, Equatable, Sendable {
    public let name: String
    public let canonicalName: String
    public let isDeleted: Bool
    public let kind: AttributeKind

    enum CodingKeys: String, CodingKey {
        case name = "name"
        case canonicalName = "canonicalName"
        case isDeleted = "isDeleted"
        case kind = "kind"
    }

    public init(
        name: String,
        canonicalName: String,
        isDeleted: Bool,
        kind: AttributeKind
    ) {
        self.name = name
        self.canonicalName = canonicalName
        self.isDeleted = isDeleted
        self.kind = kind
    }
}
