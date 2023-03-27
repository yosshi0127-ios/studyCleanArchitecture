//
//  GithubRequestParam.swift
//  studyCleanArchitecture
//
//  Created by 吉川聖斗 on 2023/03/23.
//

import Foundation

extension APIRequestParam {
    
    struct GithubRequestParam: RequestParamsProtocol {
        typealias Response = [Repo]
        
        var baseURL: String {
            return "https://api.github.com"
        }
        
        var path: String {
            return "/orgs/mixigroup/repos"
        }
        
        var method: HTTPMethod {
            return .get
        }
        
        var headers: [String : String]? {
            return [
                "Accpt": "application/vnd.github.v3+json"
            ]
        }
    }
    
}

