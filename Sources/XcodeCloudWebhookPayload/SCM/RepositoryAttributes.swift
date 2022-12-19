//
//  RepositoryAttributes.swift
//  
//
//  Created by Jeremy Greenwood on 12/12/22.
//

import Foundation

public struct RepositoryAttributes: Codable, Equatable, Sendable {
    public let httpCloneURL: String
    public let sshCloneURL: String
    public let ownerName: String
    public let repositoryName: String

    enum CodingKeys: String, CodingKey {
        case httpCloneURL = "httpCloneUrl"
        case sshCloneURL = "sshCloneUrl"
        case ownerName = "ownerName"
        case repositoryName = "repositoryName"
    }

    public init(
        httpCloneURL: String,
        sshCloneURL: String,
        ownerName: String,
        repositoryName: String
    ) {
        self.httpCloneURL = httpCloneURL
        self.sshCloneURL = sshCloneURL
        self.ownerName = ownerName
        self.repositoryName = repositoryName
    }
}
