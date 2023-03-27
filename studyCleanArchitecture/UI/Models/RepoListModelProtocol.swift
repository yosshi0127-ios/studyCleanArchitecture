//
//  RepoListModelProtocol.swift
//  studyCleanArchitecture
//
//  Created by 吉川聖斗 on 2023/03/23.
//

import Foundation

protocol RepoListModelProtocol {
    func loadRepos() async throws -> [Repo]
}
