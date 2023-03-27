//
//  Dependecy.swift
//  studyCleanArchitecture
//
//  Created by 吉川聖斗 on 2023/03/23.
//

import Foundation

@propertyWrapper
final class Dependecy<Component> {
    var wrappedValue: Component
    
    init() {
        self.wrappedValue = DependecyContainer.resolve(type: Component.self)
    }    
}
