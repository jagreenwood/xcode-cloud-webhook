//
//  ExecutionProgress.swift
//  
//
//  Created by Jeremy Greenwood on 12/19/22.
//

import Foundation

public enum ExecutionProgress: String, Codable, Equatable, Sendable {
    case COMPLETE
    case PENDING
    case RUNNING
}
