//
//  IssueCounts.swift
//  
//
//  Created by Jeremy Greenwood on 12/12/22.
//

import Foundation

public struct IssueCounts: Codable, Equatable, Sendable {
    public let analyzerWarnings: Int
    public let errors: Int
    public let testFailures: Int
    public let warnings: Int

    enum CodingKeys: String, CodingKey {
        case analyzerWarnings = "analyzerWarnings"
        case errors = "errors"
        case testFailures = "testFailures"
        case warnings = "warnings"
    }

    public init(
        analyzerWarnings: Int,
        errors: Int,
        testFailures: Int,
        warnings: Int
    ) {
        self.analyzerWarnings = analyzerWarnings
        self.errors = errors
        self.testFailures = testFailures
        self.warnings = warnings
    }
}
