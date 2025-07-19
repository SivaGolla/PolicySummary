//
//  PolicyListViewModelTests.swift
//  PolicySummaryTests
//
//  Created by Venkata Sivannarayana Golla on 19/07/25.
//

import XCTest
@testable import PolicySummary

final class PolicyListViewModelTests: XCTestCase {

    var viewModel: PolicyListViewModel!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        viewModel = PolicyListViewModel()
    }

    override func tearDownWithError() throws {
        viewModel = nil
        try super.tearDownWithError()
    }

    func testLoadPolicies() throws {
        viewModel.loadPolicies()
        XCTAssertFalse(viewModel.policies.isEmpty, "Policies should be loaded and not empty")
    }
    
    func testToggleExpandWithMockData() throws {
        let mockPolicies = [
            Policy(id: 1, policyName: "Test Policy", policyNumber: "123", status: "Active", nextPremiumDue: "2025-08-01",
                   startDate: "2020-01-01", maturityDate: "2030-01-01", sumAssured: "100000",
                   premiumFrequency: "Annual", lastPremiumPaid: "2024-08-01", nextPremiumAmount: "500")
        ]
        let viewModel = PolicyListViewModel {
            mockPolicies
        }
        XCTAssertFalse(viewModel.policies[0].isExpanded)
        viewModel.toggleExpand(viewModel.policies[0])
        XCTAssertTrue(viewModel.policies[0].isExpanded)
    }
    
    func testToggleExpand() throws {
        viewModel.loadPolicies()
        guard let firstPolicy = viewModel.policies.first else {
            XCTFail("No policies loaded")
            return
        }
        
        XCTAssertFalse(firstPolicy.isExpanded, "Initial isExpanded should be false")
        
        viewModel.toggleExpand(firstPolicy)
        XCTAssertTrue(viewModel.policies[0].isExpanded, "isExpanded should be toggled to true")
        
        viewModel.toggleExpand(firstPolicy)
        XCTAssertFalse(viewModel.policies[0].isExpanded, "isExpanded should be toggled back to false")
    }

}
