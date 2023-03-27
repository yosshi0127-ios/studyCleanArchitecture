//
//  RepoListViewModel.swift
//  studyCleanArchitecture
//
//  Created by 吉川聖斗 on 2023/03/23.
//

import Foundation

@MainActor
class RepoListViewModel: ObservableObject {
        
    @Dependecy private var model: RepoListModelProtocol
        
    @Published private(set) var state: Stateful<[Repo]> = .idle
        
    func onAppear() async {
        await loadRepos()
    }   
    
    func onRetryButtonTapped() async {
    }
    
    private func loadRepos() async {
        
        do {
            let repos = try await model.loadRepos()
            
            state = .loaded(repos)
        } catch {
            
            state = .failed(error)
        }
    }
}
