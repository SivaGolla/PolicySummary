//
//  PolicySummaryApp.swift
//  PolicySummary
//
//  Created by Venkata Sivannarayana Golla on 19/07/25.
//

import SwiftUI

@main
struct PolicySummaryApp: App {
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(red: 0/255, green: 44/255, blue: 95/255, alpha: 1) // #002C5F
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().tintColor = .white // For back button and bar button items
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
