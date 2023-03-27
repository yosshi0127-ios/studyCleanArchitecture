//
//  RequestParams.swift
//  studyCleanArchitecture
//
//  Created by 吉川聖斗 on 2023/03/23.
//

import Foundation

enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
}

protocol RequestParamsProtocol {
//    associatedtype Request: Codable
    
    associatedtype Response: Codable
    
    var baseURL: String { get }
    
    var path: String { get }
    
    var method: HTTPMethod { get }
    
    var headers: [String: String]? { get }
    
//    var params: Request? {get}
    
//    var queryItem: [URLQueryItem]? { get }
    
//    var body: Data? { get }
}

extension RequestParamsProtocol {
    
    func builURLRequest() throws -> URLRequest {
        
        guard let baseURL = URL(string: baseURL) else {
            throw NetworkError.invalidURL
        }
        
        let url = baseURL.appendingPathComponent(path)
        var urlRequest = URLRequest(url: url)

        urlRequest.httpMethod = method.rawValue
        
        if let headers {
            for header in headers {
                urlRequest.setValue(header.value, forHTTPHeaderField: header.key)
            }
        }
        
        return urlRequest
    }
    
    
    func response(from data: Data) throws -> Response {        
        return try JSONDecoder().decode(Response.self, from: data)
    }
}


