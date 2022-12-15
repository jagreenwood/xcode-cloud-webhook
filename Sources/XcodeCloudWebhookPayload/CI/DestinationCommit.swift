//
//  DestinationCommit.swift
//  
//
//  Created by Jeremy Greenwood on 12/12/22.
//

import Foundation

public struct DestinationCommit: Codable, Equatable, Sendable {
    public let commitSHA: String
    public let author: Author
    public let committer: Author
    public let htmlURL: String

    enum CodingKeys: String, CodingKey {
        case commitSHA = "commitSha"
        case author = "author"
        case committer = "committer"
        case htmlURL = "htmlUrl"
    }

    public init(
        commitSHA: String,
        author: Author,
        committer: Author,
        htmlURL: String
    ) {
        self.commitSHA = commitSHA
        self.author = author
        self.committer = committer
        self.htmlURL = htmlURL
    }
}
