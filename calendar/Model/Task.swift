//
//  Task.swift
//  calendar
//
//  Created by Krzysztof Czura on 29/09/2023.
//

import Foundation


// task model and sample tasks...

//Array of tasks
struct Task: Identifiable {
    var id = UUID().uuidString
    var title: String
    var time: Date = Date()
}

// total task meta view...
struct TaskMetaData: Identifiable {
    var id = UUID().uuidString
    var task: [Task]
    var taskDate: Date
}

// sample date for testing...
func getSampleDate(offset: Int) -> Date {
    let calendar = Calendar.current
    
    let date = calendar.date(byAdding: .day, value: offset, to: Date())
    
    return date ?? Date()
}

// sample tasks
var tasks: [TaskMetaData] = [
    
    TaskMetaData(task: [
        Task(title: "Clean"),
        Task(title: "Buy some milk"),
        Task(title: "water plants")
    ], taskDate: getSampleDate(offset: 1)),

    TaskMetaData(task: [
        Task(title: "phone call")
    ], taskDate: getSampleDate(offset: -3)),
    
    TaskMetaData(task: [
        Task(title: "write an essay"),
        Task(title: "Buy some cookies"),
        Task(title: "fix the car")
    ], taskDate: getSampleDate(offset: -8))
]
