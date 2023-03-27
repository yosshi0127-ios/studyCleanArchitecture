//
//  GitHubRepository.swift
//  studyCleanArchitecture
//
//  Created by 吉川聖斗 on 2023/03/23.
//

import Foundation

actor GitHubRepository: GithubGateway {
    @Dependecy private var client: ApiCllientProtocol
    
    func request() async throws -> [Repo] {
        let request = APIRequestParam.GithubRequestParam()
        let decode = try await requestAPI(client: client, request: request)

        return decode
    }
}
