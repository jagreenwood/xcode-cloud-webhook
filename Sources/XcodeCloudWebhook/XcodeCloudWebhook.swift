//
//  XcodeCloudWebhook.swift
//
//
//  Created by Jeremy Greenwood on 12/12/22.
//

public protocol XcodeCloudWebhookHandler {
    func run(with payload: Payload) async throws
}

public final actor XcodeCloudWebhook {
    typealias Storage = Array<XcodeCloudWebhookHandler>

    var _storage = Storage()

    public init() {}

    public func add(_ handler: XcodeCloudWebhookHandler) {
        _storage.append(handler)
    }

    public func run(_ payload: Payload) async throws {
        try await withThrowingTaskGroup(of: Void.self) { [unowned self] group in
            for handler in self._storage {
                group.addTask {
                    try await handler.run(with: payload)
                }
            }

            try await group.waitForAll()
        }
    }
}
