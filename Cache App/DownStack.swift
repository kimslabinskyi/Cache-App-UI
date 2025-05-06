//
//  DownStack.swift
//  Cache App
//
//  Created by Kim on 06.05.2025.
//

import SwiftUI

struct DownStack: View {
    @Binding var image: String
    var body: some View {
        
        HStack{
            Image(systemName: image)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 26, maxHeight: 26)
                .padding(10)
                .background(Color.green)
                .foregroundColor(Color.white)
                .cornerRadius(16)
            
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

#Preview {
    DownStack(image: .constant("banknote"))
}
