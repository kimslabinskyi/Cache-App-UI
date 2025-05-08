//
//  DownStack.swift
//  Cache App
//
//  Created by Kim on 06.05.2025.
//

import SwiftUI

struct BottomStack: View {
    @Binding var image: String
    @Binding var headline: String
    @Binding var subHeadline: String
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
                Text(headline)
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(subHeadline)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .padding(.horizontal)
        }
        .padding()
        
    }
}

#Preview {
    BottomStack(image: .constant("banknote"), headline: .constant(""), subHeadline: .constant(""))
}
