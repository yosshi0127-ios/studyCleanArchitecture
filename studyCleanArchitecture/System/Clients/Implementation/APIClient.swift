//
//  APIClient.swift
//  studyCleanArchitecture
//
//  Created by 吉川聖斗 on 2023/03/23.
//

import Foundation

actor APIClient: ApiCllientProtocol {
    func request(urlRequest: URLRequest) async throws -> Data {
        async let (data, _) = URLSession.shared.data(for: urlRequest)
        return try await data
    }
}
