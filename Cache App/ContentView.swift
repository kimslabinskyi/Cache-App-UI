//
//  ContentView.swift
//  Cache App
//
//  Created by Kim on 29.04.2025.
//
import SwiftUI

struct ContentView: View {
    private var items: [Int] = []
    private var data  = Array(1...4)
    private let adaptiveColumn = [
        GridItem(.adaptive(minimum: 150)) ]
    var body: some View {
        NavigationView{
            ScrollView{
                
                
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
                    .background(Color.red)
                    .cornerRadius(12)
                }
                .padding(.horizontal)
                
                
                
                LazyVGrid(columns: adaptiveColumn, spacing: 10) {
                    ForEach(data, id: \.self) { item in
                        Text(String(item))
                            .frame(width: 180, height: 180, alignment: .center)
                            .background(.blue)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .font(.title)
                    }
                }
                .padding(.horizontal)
                
                
                VStack {
                    Text("More ways to add money")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.headline)
                        .padding()
                    
                    HStack{
                        Image(systemName: "apple.logo")
                            .padding(.horizontal)
                        
                        VStack{
                            Text("Paper money")
                                .font(.headline)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("Deposit at a nearby location")
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                            .padding(.horizontal)
                    }
                }
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
        }
    }
}

#Preview {
    ContentView()
}
