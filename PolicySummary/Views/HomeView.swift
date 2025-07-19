//
//  HomeView.swift
//  PolicySummary
//
//  Created by Venkata Sivannarayana Golla on 19/07/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 24) {
                    
                    // Welcome Section
                    Text("Hi, John! 👋")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top, 20)
                    
                    // Summary Cards (responsive layout)
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                        SummaryCard(title: "Active Policies", value: "2", color: .blue)
                        SummaryCard(title: "Sum Assured", value: "$225K", color: .green)
                        SummaryCard(title: "Next Due", value: "15 Aug", color: .orange)
                    }
                    
                    // Recent Activity Card
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Recent Activity")
                            .font(.headline)
                        ActivityRow(activity: "Premium of $100 paid for Life Secure Plan", date: "15 Jul 2025")
                        ActivityRow(activity: "New Health Protect policy added", date: "01 Jul 2025")
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(16)
                    .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 2)
                    
                    // Insurance Tip Card
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Did you know?")
                            .font(.headline)
                        Text("Paying premiums annually can save you up to 10% compared to monthly payments.")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        Button(action: {}) {
                            Text("Learn More")
                                .font(.caption)
                                .padding(.vertical, 6)
                                .padding(.horizontal, 12)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.yellow.opacity(0.15))
                    .cornerRadius(16)
                    .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 2)
                }
                .padding(.horizontal)
                .padding(.bottom, 16)
            }
            .navigationTitle("Home")
        }
    }
}

struct SummaryCard: View {
    let title: String
    let value: String
    let color: Color
    
    var body: some View {
        VStack {
            Text(value)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.white)
            Text(title)
                .font(.caption)
                .foregroundColor(.white.opacity(0.9))
        }
        .frame(maxWidth: .infinity, minHeight: 80)
        .background(color)
        .cornerRadius(12)
    }
}

struct ActivityRow: View {
    let activity: String
    let date: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(activity)
                .font(.subheadline)
            Text(date)
                .font(.caption)
                .foregroundColor(.gray)
        }
        .padding(.vertical, 4)
    }
}
