//
//  CiBuildRunAttributes.swift
//  
//
//  Created by Jeremy Greenwood on 12/12/22.
//

import Foundation

public struct CIBuildRunAttributes: Codable, Equatable, Sendable {
    public let number: Int
    public let createdDate: String
    public let sourceCommit: SourceCommit
    public let destinationCommit: DestinationCommit
    public let isPullRequestBuild: Bool
    public let executionProgress: String
    public let completionStatus: String

    enum CodingKeys: String, CodingKey {
        case number = "number"
        case createdDate = "createdDate"
        case sourceCommit = "sourceCommit"
        case destinationCommit = "destinationCommit"
        case isPullRequestBuild = "isPullRequestBuild"
        case executionProgress = "executionProgress"
        case completionStatus = "completionStatus"
    }

    public init(
        number: Int,
        createdDate: String,
        sourceCommit: SourceCommit,
        destinationCommit: DestinationCommit,
        isPullRequestBuild: Bool,
        executionProgress: String,
        completionStatus: String
    ) {
        self.number = number
        self.createdDate = createdDate
        self.sourceCommit = sourceCommit
        self.destinationCommit = destinationCommit
        self.isPullRequestBuild = isPullRequestBuild
        self.executionProgress = executionProgress
        self.completionStatus = completionStatus
    }
}
