//
//  Payload.swift
//
//
//  Created by Jeremy Greenwood on 12/12/22.
//

import Foundation

public struct Payload: Codable, Equatable, Sendable {
    public let webhook: Webhook
    public let app: App
    public let workflow: Workflow
    public let product: Product
    public let buildRun: BuildRun
    public let buildActions: [BuildAction]
    public let provider: Provider
    public let repository: Repository
    public let pullRequest: PullRequest?
    public let gitReference: GitReference
    
    enum CodingKeys: String, CodingKey {
        case webhook = "webhook"
        case app = "app"
        case workflow = "ciWorkflow"
        case product = "ciProduct"
        case buildRun = "ciBuildRun"
        case buildActions = "ciBuildActions"
        case provider = "scmProvider"
        case repository = "scmRepository"
        case pullRequest = "scmPullRequest"
        case gitReference = "scmGitReference"
    }
    
    public init(
        webhook: Webhook,
        app: App,
        workflow: Workflow,
        product: Product,
        buildRun: BuildRun,
        buildActions: [BuildAction],
        provider: Provider,
        repository: Repository,
        pullRequest: PullRequest?,
        gitReference: GitReference
    ) {
        self.webhook = webhook
        self.app = app
        self.workflow = workflow
        self.product = product
        self.buildRun = buildRun
        self.buildActions = buildActions
        self.provider = provider
        self.repository = repository
        self.pullRequest = pullRequest
        self.gitReference = gitReference
    }
}
