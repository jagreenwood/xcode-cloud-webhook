//
//  BuildRunAttributes.swift
//  
//
//  Created by Jeremy Greenwood on 12/12/22.
//

import Foundation

public struct BuildRunAttributes: Codable, Equatable, Sendable {
    public let number: Int
    @DateCoding public var createdDate: Date
    @OptionalDateCoding public var startedDate: Date?
    public let sourceCommit: SourceCommit
    public let destinationCommit: DestinationCommit?
    public let isPullRequestBuild: Bool
    public let executionProgress: ExecutionProgress
    public let completionStatus: CompletionStatus?

    enum CodingKeys: String, CodingKey {
        case number = "number"
        case createdDate = "createdDate"
        case startedDate = "startedDate"
        case sourceCommit = "sourceCommit"
        case destinationCommit = "destinationCommit"
        case isPullRequestBuild = "isPullRequestBuild"
        case executionProgress = "executionProgress"
        case completionStatus = "completionStatus"
    }

    public init(
        number: Int,
        createdDate: Date,
        startedDate: Date,
        sourceCommit: SourceCommit,
        destinationCommit: DestinationCommit?,
        isPullRequestBuild: Bool,
        executionProgress: ExecutionProgress,
        completionStatus: CompletionStatus?
    ) {
        self.number = number
        self.createdDate = createdDate
        self.startedDate = startedDate
        self.sourceCommit = sourceCommit
        self.destinationCommit = destinationCommit
        self.isPullRequestBuild = isPullRequestBuild
        self.executionProgress = executionProgress
        self.completionStatus = completionStatus
    }
}
