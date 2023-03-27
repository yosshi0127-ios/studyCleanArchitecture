//
//  GithubInteractor.swift
//  studyCleanArchitecture
//
//  Created by 吉川聖斗 on 2023/03/23.
//

import Foundation

actor GithubInteractor: gitHubUseCase {
    @Dependecy private var gateway: GithubGateway
    
    func get() async throws -> [Repo] {
        return try await gateway.request()
    }
}
