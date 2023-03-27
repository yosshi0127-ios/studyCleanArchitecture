//
//  RepoListView.swift
//  studyCleanArchitecture
//
//  Created by 吉川聖斗 on 2023/03/23.
//

import SwiftUI

struct RepoListView: View {
    @StateObject private var repoListVM: RepoListViewModel
    
    init(repoListVM: RepoListViewModel) {
        _repoListVM = StateObject(wrappedValue: repoListVM)
    }
            
    var body: some View {
        VStack {
            listArea()
        }
        .padding()
        .task {
            await repoListVM.onAppear()
        }
    }
    
    @ViewBuilder
    func listArea() -> some View {
        switch repoListVM.state {
        case .idle, .loading:
            ProgressView("loading...")
            
        case .loaded([]):
            Text("No repositories")
            
        case let .loaded(repos):
            List(repos) { repo in
                Text(repo.name)
            }
        case .failed:
            Text("Failed")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RepoListView(repoListVM: RepoListViewModel())
    }
}
