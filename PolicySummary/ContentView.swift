//
//  ContentView.swift
//  PolicySummary
//
//  Created by Venkata Sivannarayana Golla on 19/07/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            PolicyListView()
                .tabItem {
                    Image(systemName: "doc.plaintext")
                    Text("Policies")
                }
            
            Text("Claims Screen")
                .tabItem {
                    Image(systemName: "doc.text.fill")
                    Text("Claims")
                }
            
            Text("Profile Screen")
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Profile")
                }
        }
    }
}

#Preview {
    ContentView()
}
