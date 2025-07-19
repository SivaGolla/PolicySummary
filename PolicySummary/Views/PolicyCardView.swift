//
//  PolicyCardView.swift
//  PolicySummary
//
//  Created by Venkata Sivannarayana Golla on 19/07/25.
//

import SwiftUI

struct PolicyCardView: View {
    @ObservedObject var viewModel: PolicyListViewModel
    var policy: Policy
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                VStack(alignment: .leading) {
                    Text(policy.policyName)
                        .font(.headline)
                    Text("Policy No: \(policy.policyNumber)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Text("Status: \(policy.status)")
                        .foregroundColor(policy.status == "Active" ? .green : .red)
                }
                
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Next Due")
                        .font(.caption)
                        .foregroundColor(.gray)
                    Text(policy.nextPremiumDue)
                        .font(.body)
                        .foregroundColor(.blue)
                }
            }
            .padding()
                        
            if policy.isExpanded {
                Divider()
                VStack(alignment: .leading, spacing: 4) {
                    Text("Start Date: \(policy.startDate)")
                    Text("Maturity Date: \(policy.maturityDate)")
                    Text("Sum Assured: \(policy.sumAssured)")
                    Text("Premium Frequency: \(policy.premiumFrequency)")
                    Text("Last Premium Paid: \(policy.lastPremiumPaid)")
                    Text("Next Premium Amount: \(policy.nextPremiumAmount)")
                }
                .padding()
                .font(.caption)
                .transition(.opacity.combined(with: .scale))
            }
            
            HStack {
                Spacer()
                Button(action: {
                    withAnimation {
                        viewModel.toggleExpand(policy)
                    }
                }) {
                    Text(policy.isExpanded ? "Read Less" : "Read More")
                        .padding(.trailing)
                        .font(.caption)
                        .foregroundColor(Color.blue)
                    
                }
            }
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .cornerRadius(12)
        .shadow(radius: 2)
    }
}
