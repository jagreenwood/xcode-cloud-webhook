//
//  BuildActionAttributes.swift
//  
//
//  Created by Jeremy Greenwood on 12/12/22.
//

import Foundation

public struct BuildActionAttributes: Codable, Equatable, Sendable {
    public let name: String
    public let actionType: ActionType?
    public let issueCounts: IssueCounts
    public let executionProgress: ExecutionProgress
    public let completionStatus: CompletionStatus?
    public let isRequiredToPass: Bool

    enum CodingKeys: String, CodingKey {
        case name = "name"
        case actionType = "actionType"
        case issueCounts = "issueCounts"
        case executionProgress = "executionProgress"
        case completionStatus = "completionStatus"
        case isRequiredToPass = "isRequiredToPass"
    }

    public init(
        name: String,
        actionType: ActionType?,
        issueCounts: IssueCounts,
        executionProgress: ExecutionProgress,
        completionStatus: CompletionStatus?,
        isRequiredToPass: Bool
    ) {
        self.name = name
        self.actionType = actionType
        self.issueCounts = issueCounts
        self.executionProgress = executionProgress
        self.completionStatus = completionStatus
        self.isRequiredToPass = isRequiredToPass
    }
}
