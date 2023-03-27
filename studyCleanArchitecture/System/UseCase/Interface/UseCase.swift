//
//  UseCase.swift
//  studyCleanArchitecture
//
//  Created by 吉川聖斗 on 2023/03/23.
//

import Foundation

protocol gitHubUseCase {
    func get() async throws -> [Repo]
}
