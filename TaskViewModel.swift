//
//  TaskViewModel.swift
//  ToDoListApp
//
//  Created by BPIMA_ALW1090 on 5/12/24.
//

import Foundation

class TaskViewModel: ObservableObject {
    @Published var tasks: [Task] = []
    
    func addTask(title: String) {
        let newTask = Task(id: UUID(), title: title, isComplete: false)
        tasks.append(newTask)
    }
    
    func deleteTask(at offset: IndexSet) {
        tasks.remove(atOffsets: offset)
    }
    
    func toggleTask(task: Task) {
        if let index = tasks.firstIndex(where: { $0.id == task.id } ) {
            tasks[index].isComplete.toggle()
        }
    }
}
