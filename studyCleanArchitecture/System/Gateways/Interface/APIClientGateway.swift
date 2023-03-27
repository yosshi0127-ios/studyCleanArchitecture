//
//  APIClientGateway.swift
//  studyCleanArchitecture
//
//  Created by 吉川聖斗 on 2023/03/23.
//

import Foundation

protocol APIClientGateway {
    func requestAPI<Request: RequestParamsProtocol>(client: ApiCllientProtocol, request: Request) async throws -> Request.Response
    
}

extension APIClientGateway {
 
    func requestAPI<Request: RequestParamsProtocol>(client: ApiCllientProtocol, request: Request) async throws -> Request.Response {
        let urlRequest = try request.builURLRequest()
        let responseData = try await client.request(urlRequest: urlRequest)
        
        return try request.response(from: responseData)
    }
}
