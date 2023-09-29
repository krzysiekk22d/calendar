//
//  DateValue.swift
//  calendar
//
//  Created by Krzysztof Czura on 29/09/2023.
//

import SwiftUI

struct DateValue: Identifiable {
    var id = UUID().uuidString
    var day: Int
    var date: Date 
}
