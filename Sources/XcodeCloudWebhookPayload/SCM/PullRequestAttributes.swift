//
//  PullRequestAttributes.swift
//  
//
//  Created by Jeremy Greenwood on 12/12/22.
//

import Foundation

public struct PullRequestAttributes: Codable, Equatable, Sendable {
    public let title: String
    public let number: Int
    public let htmlURL: String
    public let sourceRepositoryOwner: String
    public let sourceRepositoryName: String
    public let sourceBranchName: String
    public let destinationRepositoryOwner: String
    public let destinationRepositoryName: String
    public let destinationBranchName: String
    public let isClosed: Bool
    public let isCrossRepository: Bool

    enum CodingKeys: String, CodingKey {
        case title = "title"
        case number = "number"
        case htmlURL = "htmlUrl"
        case sourceRepositoryOwner = "sourceRepositoryOwner"
        case sourceRepositoryName = "sourceRepositoryName"
        case sourceBranchName = "sourceBranchName"
        case destinationRepositoryOwner = "destinationRepositoryOwner"
        case destinationRepositoryName = "destinationRepositoryName"
        case destinationBranchName = "destinationBranchName"
        case isClosed = "isClosed"
        case isCrossRepository = "isCrossRepository"
    }

    public init(
        title: String,
        number: Int,
        htmlURL: String,
        sourceRepositoryOwner: String,
        sourceRepositoryName: String,
        sourceBranchName: String,
        destinationRepositoryOwner: String,
        destinationRepositoryName: String,
        destinationBranchName: String,
        isClosed: Bool,
        isCrossRepository: Bool
    ) {
        self.title = title
        self.number = number
        self.htmlURL = htmlURL
        self.sourceRepositoryOwner = sourceRepositoryOwner
        self.sourceRepositoryName = sourceRepositoryName
        self.sourceBranchName = sourceBranchName
        self.destinationRepositoryOwner = destinationRepositoryOwner
        self.destinationRepositoryName = destinationRepositoryName
        self.destinationBranchName = destinationBranchName
        self.isClosed = isClosed
        self.isCrossRepository = isCrossRepository
    }
}
