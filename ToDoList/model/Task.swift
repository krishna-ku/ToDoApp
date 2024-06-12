//
//  Task.swift
//  ToDoList
//
//  Created by krishna on 11/06/24.
//

import SwiftUI

struct Task: Identifiable {
    let id = UUID()
    var title: String = ""
    var isDone : Bool = false
}
