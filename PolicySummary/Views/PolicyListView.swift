//
//  PolicyListView.swift
//  PolicySummary
//
//  Created by Venkata Sivannarayana Golla on 19/07/25.
//

import SwiftUI

struct PolicyListView: View {
    @StateObject private var viewModel = PolicyListViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 16) {
                    ForEach(viewModel.policies) { policy in
                        PolicyCardView(viewModel: viewModel, policy: policy)
                            .padding(.horizontal)
                    }
                }
                .padding(.vertical)
            }
            .navigationTitle("My Policies")            
        }
        .background(Color(red: 0.0, green: 0.17, blue: 0.37).opacity(0.1))
    }
}
