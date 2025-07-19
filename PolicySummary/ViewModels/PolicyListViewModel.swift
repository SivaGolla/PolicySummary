//
//  PolicyListViewModel.swift
//  PolicySummary
//
//  Created by Venkata Sivannarayana Golla on 19/07/25.
//

import Foundation

//class PolicyListViewModel: ObservableObject {
//    @Published var policies: [Policy] = []
//    
//    init() {
//        loadPolicies()
//    }
//    
//    func loadPolicies() {
//        if let url = Bundle.main.url(forResource: "policies", withExtension: "json"),
//           let data = try? Data(contentsOf: url),
//           let decoded = try? JSONDecoder().decode([Policy].self, from: data) {
//            self.policies = decoded
//        }
//    }
//    
//    func toggleExpand(_ policy: Policy) {
//        if let index = policies.firstIndex(where: { $0.id == policy.id }) {
//            policies[index].isExpanded.toggle()
//        }
//    }
//}

class PolicyListViewModel: ObservableObject {
    @Published private(set) var policies: [Policy] = []

    // Dependency injection for policies data source - useful for testing
    private let policiesLoader: () -> [Policy]

    // Default initializer loads from bundle
    init(policiesLoader: @escaping () -> [Policy] = PolicyListViewModel.loadPoliciesFromBundle) {
        self.policiesLoader = policiesLoader
        loadPolicies()
    }

    func loadPolicies() {
        policies = policiesLoader()
    }

    func toggleExpand(_ policy: Policy) {
        guard let index = policies.firstIndex(where: { $0.id == policy.id }) else { return }
        policies[index].isExpanded.toggle()
    }
}

extension PolicyListViewModel {
    // Default loader reads JSON file from bundle
    static func loadPoliciesFromBundle() -> [Policy] {
        guard let url = Bundle.main.url(forResource: "policies", withExtension: "json"),
              let data = try? Data(contentsOf: url),
              let decoded = try? JSONDecoder().decode([Policy].self, from: data) else {
            return []
        }
        return decoded
    }
}
