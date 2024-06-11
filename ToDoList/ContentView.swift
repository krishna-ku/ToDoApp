//
//  ContentView.swift
//  ToDoList
//
//  Created by krishna on 06/06/24.
//

import SwiftUI

struct ContentView: View {
    //    @State private var showingAddNoteView = false
    var body: some View {
        NavigationView{
            VStack{
                TasksViews()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
