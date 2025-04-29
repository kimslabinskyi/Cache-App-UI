//
//  ContentView.swift
//  Cache App
//
//  Created by Kim on 29.04.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            VStack(spacing: 20) {
                ForEach(0..<10) {_ in
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                        .frame(width: 700, height: 70)
                    Text("Hello, world!")
                }
                
                
                
            }
            
            
        }
        
    }
}

#Preview {
    ContentView()
}
