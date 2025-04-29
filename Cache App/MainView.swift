//
//  MainView.swift
//  Cache App
//
//  Created by Kim on 29.04.2025.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem() {
                    Label("Order", systemImage: "dollar")
                }
            
            ContentView()
                .tabItem() {
                    Label("Order", systemImage: "dollar")
                }
        }
    }
}
