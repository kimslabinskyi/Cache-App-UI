//
//  ContentView.swift
//  Cache App
//
//  Created by Kim on 29.04.2025.
//
import SwiftUI

struct ContentView: View {
    private var items: [Int] = []
    private var titles = ["Savings", "Bitcoin", "Stocks", "Taxes"]
    private var images = ["dollarsign.arrow.trianglehead.counterclockwise.rotate.90", "bitcoinsign.circle", "chart.line.uptrend.xyaxis", "bitcoinsign.bank.building"]
    private var colors = [Color.green, Color.blue, Color.purple, Color.indigo]
    private var info = ["", ""]
    private var bottomLabel = ["Save for a goal", "↑ 1.00 today", "Invests with $1", "File for free" ]
   // private let adaptiveColumn = [
      //  GridItem(.adaptive(minimum: 150)) ]
    private let columnLayout = [GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {
        NavigationView{
            ScrollView{
                Spacer()
                    .frame(height: 24)
                
                HStack {
                    VStack{
                        HStack {
                            Text("Cash Balance")
                            Spacer()
                            Text("Account and Routing")
                            Image(systemName: "chevron.right")
                            
                        }
                        HStack {
                            Text("$13,104.69")
                                .font(.title)
                                .fontWeight(.medium)
                                .padding(.vertical)
                            Spacer()
                        }
                        HStack {
                            Spacer()
                                .frame(width: 5)
                            Text("Add Cash")
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(.secondary.opacity(0.2))
                                .cornerRadius(.infinity)
                            
                            Spacer()
                                .frame(width: 25)
                            
                            Text("Cash Out")
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(.secondary.opacity(0.2))
                                .cornerRadius(.infinity)
                            
                            Spacer()
                                .frame(width: 5)
                        }
                    }
                    .padding()
                    .background(Color.white) 
                    .cornerRadius(12)
                }
                .padding(.horizontal)
                
                Spacer()
                    .frame(height: 16)
                
                
                GridStack()
                .padding(.horizontal)
                
                Spacer()
                    .frame(height: 16)
                
                VStack {
                    Text("More ways to add money")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.headline)
                        .padding()
                    DownStack(image: .constant("banknote"))
                        .padding()
                    DownStack(image: .constant("repeat.circle"))
                        .padding()
                    DownStack(image: .constant("arrow.down.app"))
                        .padding()
                }
                .background(Color.white)
                
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Text("Money")
                        .font(.system(.title))
                        .fontWeight(.medium)
                        .padding()
                }
                
                ToolbarItem(placement: .topBarTrailing){
                    Image(systemName: "person.crop.circle")
                }
            }
            .background(Color.secondary.opacity(0.2))
        }
    }
}

#Preview {
    ContentView()
}
