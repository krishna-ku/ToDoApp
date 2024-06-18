//
//  ListRowView.swift
//  Todo
//
//  Created by krishna on 05/06/24.
//

import SwiftUI

struct ListRowView: View {
    @Binding var task: Task
    var body: some View {
        HStack{
            Image(systemName: task.isDone ? "checkmark.circle.fill" : "checkmark.circle")
                .foregroundColor(task.isDone ? .blue : .primary)
            Text(task.title)
            Spacer()
            if(!task.isDone){
                Button(action: {
                    task.isDone.toggle()
                }){
                    Text("markAsDone")
                        .font(.system(size: 14))
                        .padding(10)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(100)
                }
            }
        }
        .padding(.vertical,15)
        .padding(.horizontal)
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(task: .constant(Task(title: "Sample")))
    }
}
