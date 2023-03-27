//
//  DependecyContainerManager.swift
//  studyCleanArchitecture
//
//  Created by 吉川聖斗 on 2023/03/23.
//

import Foundation

struct DependecyContainerManager {
    
    static func setup() {
        // MARK: Client
        DependecyContainer.register(type: ApiCllientProtocol.self, component: APIClient())
        
        // MARK: Gateways
        DependecyContainer.register(type: GithubGateway.self,
                                    component: GitHubRepository())
        
        
        // MARK: UseCases
        DependecyContainer.register(type: gitHubUseCase.self, component: GithubInteractor())
        
        // MARK: Models
        DependecyContainer.register(type: RepoListModelProtocol.self, component: RepoListModel())
    }
}
