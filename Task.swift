//
//  Task.swift
//  ToDoListApp
//
//  Created by BPIMA_ALW1090 on 5/12/24.
//

import Foundation

struct  Task: Codable, Identifiable {
    let id: UUID
    let title: String
    var isComplete: Bool
}
