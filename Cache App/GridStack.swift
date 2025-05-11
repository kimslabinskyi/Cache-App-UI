//
//  GridData.swift
//  Cache App
//
//  Created by Kim on 06.05.2025.
//

import SwiftUI


struct GridStack: View {
    private let columnLayout = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]

    let titles = ["Savings", "Bitcoin", "Stocks", "Taxes"]
    let images = ["dollarsign.arrow.trianglehead.counterclockwise.rotate.90", "bitcoinsign.circle", "chart.line.uptrend.xyaxis", "bitcoinsign.bank.building"]
    let colors = [Color.green, Color.blue, Color.purple, Color.indigo]
    let info = ["$98.46", "$138.92", "", ""]
    let bottomLabel = ["Save for a goal", "↑ 1.00 today", "Invests with $1", "File for free" ]
    
    var body: some View {
        LazyVGrid(columns: columnLayout, spacing: 16) {
            ForEach(0...3, id: \.self) { index in
                VStack {
                    HStack {
                        Text(titles[index])
                            .font(.headline)
                            .padding(.horizontal)
                        
                        Spacer()
                        Image(systemName: "chevron.right")
                            .padding(.horizontal)
                            .foregroundStyle(Color.secondary.opacity(0.2))
                    }
                    
                    HStack {
                        Image(systemName: images[index])
                            .frame(width: 38, height: 38, alignment: .center)
                            .background(colors[index])
                            .cornerRadius(64)
                            .foregroundColor(Color.white)
                            .padding(.bottom)
                            .padding(.leading)
                        Spacer()
                    }
                    
                    Text(info[index])
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                        .font(.title)
                    Text(bottomLabel[index])
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                        .font(.subheadline)
                    
                }
                .frame(minWidth: 170, minHeight: 170, alignment: .center)
                .background(Color.white)
                .cornerRadius(12)
                
            }
        }
    }
}
