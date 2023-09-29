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
        
        ScrollView(.vertical) {
            
            VStack(spacing: 20, content: {
                // Custom Date Picker...
                CustomDatePicker(currentDate: $currentDate)
            })
        }
    }
}

#Preview {
    Home()
}
