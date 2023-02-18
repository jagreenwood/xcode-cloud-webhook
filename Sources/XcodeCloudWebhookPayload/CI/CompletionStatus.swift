//
//  CompletionStatus.swift
//  
//
//  Created by Jeremy Greenwood on 12/19/22.
//

import Foundation

public enum CompletionStatus: String, Codable, Equatable, Sendable {
    case CANCELED
    case ERRORED
    case FAILED
    case SKIPPED
    case SUCCEEDED
}
