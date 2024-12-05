//
//  ContentView.swift
//  ToDoListApp
//
//  Created by BPIMA_ALW1090 on 5/12/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: TaskViewModel
    @State private var taskTitle = ""
    var body: some View {
        NavigationView{
                List
                {
                    ForEach(viewModel.tasks)
                    {
                        task in
                        
                        Toggle(task.title, $task.isComplete )
                                .toggleStyle(SwitchToggleStyle(tint: .green))
                                .onChange(of: task.isComplete) {
                                    viewModel.toggleTask(task: task)
                                }
                        
                            
                    }
                
            }.frame(width: 500)
            }
            
            Form {
                TextField("Task Title", text: $taskTitle)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                Button("Save") {
                    viewModel.addTask(title: taskTitle)
                }.padding(4)
                    .cornerRadius(10)
                    .frame(width: 500, height: 40)
                .disabled(taskTitle.isEmpty)
            }
    }
    
}



#Preview {
    ContentView()
}
