//
//  User.swift
//  studyCleanArchitecture
//
//  Created by 吉川聖斗 on 2023/03/23.
//

import Foundation

struct User: Codable, Equatable {
    var name: String
    
    private enum CodingKeys: String, CodingKey {
        case name = "login"
    }
}
