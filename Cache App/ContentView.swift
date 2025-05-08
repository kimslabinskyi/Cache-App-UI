//
//  ContentView.swift
//  Cache App
//
//  Created by Kim on 29.04.2025.
//
import SwiftUI

struct ContentView: View {
    @State private var bottomImages = ["banknote", "repeat.circle", "arrow.down.app" ]
    @State private var bottomHeadlines = ["Paper Money", "Recurring Deposits", "Direct Deposit"]
    @State private var bottomSubHeadlines = ["Deposit at a nearby location", "Add from your debit card", "Get paid up to 2 days faster"]
        
   // private let adaptiveColumn = [
      //  GridItem(.adaptive(minimum: 150)) ]
    //private let columnLayout = [GridItem(.flexible()), GridItem(.flexible())]
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
                    ForEach((0...2), id: \.self) { index in
                        BottomStack(image: $bottomImages[index],
                                    headline: $bottomHeadlines[index],
                                    subHeadline: $bottomSubHeadlines[index])
                    }
                    
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
