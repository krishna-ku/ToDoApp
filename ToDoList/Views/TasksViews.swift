//
//  TasksViews.swift
//  ToDoList
//
//  Created by krishna on 07/06/24.
//

import SwiftUI

struct TasksViews: View {
//    @State var items: [String] = [
//        "please write your todo tasks"
//    ]
    @State var items: String =
        "please write your todo tasks"
    var body: some View {
        NavigationView(){
            VStack {
                VStack(spacing: 10){
                    ListRowView(title: items)
//                    ForEach(items,id: \.self){
                        
//                    }
                }
                .padding()
                Spacer()
                    .navigationTitle("ToDo App 🖌️")
                    .navigationBarItems (
                        leading: Button(action: {
                            print("Edit button tapped")
                        }) {
                            Text("📝")
                                .font(
                                    .system(size: 35))
                            
                        },
                        trailing: NavigationLink(destination: AddNewNote(item: $items)){
                            Text("➕")
                                .font(.system(size: 35))
                        }
                    )
            }
        }
    }
}

struct TasksViews_Previews: PreviewProvider {
    static var previews: some View {
        TasksViews()
    }
}
