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
    public let ciWorkflow: CIWorkflow
    public let ciProduct: CIProduct
    public let ciBuildRun: CIBuildRun
    public let ciBuildActions: [CIBuildAction]
    public let scmProvider: SCMProvider
    public let scmRepository: SCMRepository
    public let scmPullRequest: SCMPullRequest
    public let scmGitReference: SCMGitReference
    
    enum CodingKeys: String, CodingKey {
        case webhook = "webhook"
        case app = "app"
        case ciWorkflow = "ciWorkflow"
        case ciProduct = "ciProduct"
        case ciBuildRun = "ciBuildRun"
        case ciBuildActions = "ciBuildActions"
        case scmProvider = "scmProvider"
        case scmRepository = "scmRepository"
        case scmPullRequest = "scmPullRequest"
        case scmGitReference = "scmGitReference"
    }
    
    public init(
        webhook: Webhook,
        app: App,
        ciWorkflow: CIWorkflow,
        ciProduct: CIProduct,
        ciBuildRun: CIBuildRun,
        ciBuildActions: [CIBuildAction],
        scmProvider: SCMProvider,
        scmRepository: SCMRepository,
        scmPullRequest: SCMPullRequest,
        scmGitReference: SCMGitReference
    ) {
        self.webhook = webhook
        self.app = app
        self.ciWorkflow = ciWorkflow
        self.ciProduct = ciProduct
        self.ciBuildRun = ciBuildRun
        self.ciBuildActions = ciBuildActions
        self.scmProvider = scmProvider
        self.scmRepository = scmRepository
        self.scmPullRequest = scmPullRequest
        self.scmGitReference = scmGitReference
    }
}
