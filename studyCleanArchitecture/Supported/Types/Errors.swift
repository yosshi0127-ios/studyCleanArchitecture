//
//  Errors.swift
//  studyCleanArchitecture
//
//  Created by 吉川聖斗 on 2023/03/23.
//

import Foundation

enum NetworkError: Error, Equatable {
    case failedConnect
    case invalidBody
    case invalidEndpoint
    case invalidURL
}
