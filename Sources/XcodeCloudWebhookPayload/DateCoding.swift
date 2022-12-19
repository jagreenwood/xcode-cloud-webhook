//
//  DateCoding.swift
//  
//
//  Created by Jeremy Greenwood on 12/19/22.
//

import Foundation

@propertyWrapper
public struct DateCoding: Codable, Equatable, Sendable {
    public var wrappedValue: Date

    public init(wrappedValue: Date) {
        self.wrappedValue = wrappedValue
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        guard let date = try DateFormatter.formatter.date(from: container.decode(String.self)) else {
            throw DecodingError.dataCorrupted(.init(codingPath: container.codingPath, debugDescription: "Unexpected date string format"))
        }

        wrappedValue = date
    }

    public func encode(to encoder: Encoder) throws {
        let string = DateFormatter.formatter.string(from: self.wrappedValue)
        var container = encoder.singleValueContainer()
        try container.encode(string)
    }
}

@propertyWrapper
public struct OptionalDateCoding: Codable, Equatable, Sendable {
    public var wrappedValue: Date?

    public init(wrappedValue: Date?) {
        self.wrappedValue = wrappedValue
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        guard let value = wrappedValue else {
            try container.encodeNil()
            return
        }

        let string = DateFormatter.formatter.string(from: value)
        try container.encode(string)
    }
}

public extension KeyedDecodingContainer {
    func decode(_ type: OptionalDateCoding.Type, forKey key: Key) throws -> OptionalDateCoding {
        do {
            guard let value = try decodeIfPresent(String.self, forKey: key) else {
                return OptionalDateCoding(wrappedValue: nil)
            }

            guard let date = DateFormatter.formatter.date(from: value) else {
                throw DecodingError.dataCorrupted(.init(codingPath: [key], debugDescription: "Unexpected date string format"))
            }

            return OptionalDateCoding(wrappedValue: date)

        } catch let decodingError as DecodingError {
            switch decodingError {
            case .valueNotFound:
                return OptionalDateCoding(wrappedValue: nil)
            default:
                throw decodingError
            }
        } catch {
            throw error
        }
    }
}

extension DateFormatter {
    static var formatter: DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        return dateFormatter
    }
}
