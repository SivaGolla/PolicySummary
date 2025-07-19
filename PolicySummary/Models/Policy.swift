//
//  Policy.swift
//  PolicySummary
//
//  Created by Venkata Sivannarayana Golla on 19/07/25.
//

import Foundation

struct Policy: Identifiable, Decodable {
    let id: Int
    let policyName: String
    let policyNumber: String
    let status: String
    let nextPremiumDue: String
    
    let startDate: String
    let maturityDate: String
    let sumAssured: String
    let premiumFrequency: String
    let lastPremiumPaid: String
    let nextPremiumAmount: String
    
    var isExpanded: Bool = false
    
    enum CodingKeys: String, CodingKey {
        case id, policyName, policyNumber, status, nextPremiumDue,
             startDate, maturityDate, sumAssured, premiumFrequency,
             lastPremiumPaid, nextPremiumAmount
    }
}
