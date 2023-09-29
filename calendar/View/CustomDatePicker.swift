//
//  CustomDatePicker.swift
//  calendar
//
//  Created by Krzysztof Czura on 29/09/2023.
//

import SwiftUI

struct CustomDatePicker: View {
    
    @Binding var currentDate: Date
    
    // month update on arrow button clicks...
    @State var currentMonth: Int = 0
    
    var body: some View {
        
        VStack(spacing: 35) {
            
            // Days...
            let days: [String] = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
            
            HStack(spacing: 20) {
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("2021")
                        .font(.caption)
                        .fontWeight(.semibold)
                    
                    Text("September")
                        .font(.title.bold())
                }
                Spacer(minLength: 0)
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "chevron.left")
                        .font(.title2)
                })
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "chevron.right")
                        .font(.title2)
                })
            }
            .padding(.horizontal)
            // Day view...
            
            HStack(spacing: 0) {
                ForEach(days, id: \.self) { day in
                    
                    Text(day)
                        .font(.callout)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                }
            }
            
            // Dates...
        }
    }
    
    func extractDate() -> [DateValue] {
        
        let calendar = Calendar.current
        
        // Getting current month date...
        
        guard let currentMonth = calendar.date(byAdding: .month, value: self.currentMonth, to: Date()) else {
            return []
        }
        
        return currentMonth.getAllDates().compactMap { date -> DateValue in
            // getting day...
            let day = calendar.component(.day, from: date)
            
            return DateValue(day: day, date: date)
        }
    }
    
}


#Preview {
    ContentView()
}

//  Extending Date to get Current Month Dates...
extension Date {
    
    func getAllDates() -> [Date] {
        let calendar = Calendar.current
        let range = calendar.range(of: .day, in: .month, for: self)!
        
        //getting date...
        return range.compactMap { day -> Date in
            return calendar.date(byAdding: .day, value: day, to: self)!
        }
    }
}
