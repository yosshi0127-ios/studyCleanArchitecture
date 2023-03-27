//
//  DependecyContainer.swift
//  studyCleanArchitecture
//
//  Created by 吉川聖斗 on 2023/03/23.
//

import Foundation

final class DependecyContainer {
    
    private static let shared = DependecyContainer()
    
    private var dependencies: [String: AnyObject] = .init()

    public static func register<Component>(type: Component.Type, component: AnyObject) {
        shared.register(type: type, component: component)
    }
    
    public static func resolve<Component>(type: Component.Type) -> Component {
        shared.resolve(type: type)
    }
    
    private func register<Component>(type: Component.Type, component: AnyObject) {
        let key = "\(type)"
        
        dependencies[key] = component
    }
    
    private func resolve<Component>(type: Component.Type) -> Component {
        let key = "\(type)"
        let dependecy = dependencies[key] as? Component
        
        return dependecy!
    }
        
}
