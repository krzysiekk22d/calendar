//
//  Home.swift
//  calendar
//
//  Created by Krzysztof Czura on 29/09/2023.
//

import SwiftUI

struct Home: View {
    
    @State var currentDate: Date = Date()
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack(spacing: 20, content: {
                // Custom Date Picker...
                CustomDatePicker(currentDate: $currentDate)
            })
            .padding(.vertical)
        }
        // safe area view...
        .safeAreaInset(edge: .bottom) {
            HStack {
                Button {
                    
                } label: {
                    Text("Add task")
                        .fontWeight(.bold)
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(Color.orange, in: Capsule())
                }
                
                Button {
                    
                } label: {
                    Text("Add reminder")
                        .fontWeight(.bold)
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(Color.purple, in: Capsule())
                }
            }
            .padding(.horizontal)
            .padding(.top, 10)
            .foregroundStyle(Color.white)
            .background(.ultraThinMaterial)
            
        }
    }
}

#Preview {
    Home()
}
