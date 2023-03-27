//
//  studyCleanArchitectureApp.swift
//  studyCleanArchitecture
//
//  Created by 吉川聖斗 on 2023/03/23.
//

import SwiftUI

@main
struct studyCleanArchitectureApp: App {
    
    init() {
        DependecyContainerManager.setup()
        
    }
    var body: some Scene {
        WindowGroup {
            RepoListView(repoListVM: RepoListViewModel())
        }
    }
}
