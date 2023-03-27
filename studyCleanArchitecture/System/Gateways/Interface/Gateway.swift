//
//  Gateway.swift
//  studyCleanArchitecture
//
//  Created by 吉川聖斗 on 2023/03/23.
//

import Foundation

protocol GithubGateway: APIClientGateway {
    
    func request() async throws -> [Repo]
}
