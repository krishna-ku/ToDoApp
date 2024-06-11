//
//  AddNewNote.swift
//  Todo
//
//  Created by krishna on 06/06/24.
//

import SwiftUI

struct AddNewNote: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var item: String
    @State private var newNote: String=""
    var body: some View {
//        NavigationView{
        VStack{
            Form{
                TextField("Enter new note", text: $newNote)
//                Button(action: {
//                    item.append(newNote)
//                    presentationMode.wrappedValue.dismiss()
//                }) {
//                    Text("save")
//                }
//                .disabled(newNote.isEmpty)
            }
        Button(action: {
            item = newNote
                   presentationMode.wrappedValue.dismiss()
        }) {
            Text("save")
//                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
        }
            .navigationTitle("Add Note")
            .navigationBarItems(trailing: Button("cancel"){
                presentationMode.wrappedValue.dismiss()
            })
        }
        
    }
}

struct AddNewNote_Previews: PreviewProvider {
    static var previews: some View {
        AddNewNote(item: .constant("sample item 1"))
    }
}
