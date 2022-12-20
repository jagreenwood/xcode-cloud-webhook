//
//  ActionType.swift
//  
//
//  Created by Jeremy Greenwood on 12/19/22.
//

import Foundation

public enum ActionType: String, Codable, Equatable, Sendable {
    case ANALYZE
    case ARCHIVE
    case BUILD
    case TEST
}
