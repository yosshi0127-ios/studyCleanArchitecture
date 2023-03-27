//
//  RepoListModel.swift
//  studyCleanArchitecture
//
//  Created by 吉川聖斗 on 2023/03/23.
//

import Foundation

class RepoListModel: RepoListModelProtocol {
    
    @Dependecy private var gitHubUseCase: gitHubUseCase
        
    func loadRepos() async throws -> [Repo] {
        try await gitHubUseCase.get()
    }
}
