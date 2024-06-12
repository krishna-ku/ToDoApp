import SwiftUI

struct AddNewNote: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var tasks: [Task]
    @State private var newNote: String = ""
    
    var body: some View {
        VStack {
            Form {
                TextField("Enter new note", text: $newNote)
            }
            Button(action: {
                tasks.append(Task(title: newNote))
                presentationMode.wrappedValue.dismiss()
            }) {
                Text("Save")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .disabled(newNote.isEmpty)
            .navigationTitle("Add Note")
            .navigationBarItems(trailing: Button("Cancel") {
                presentationMode.wrappedValue.dismiss()
            })
        }
    }
}

struct AddNewNoteView_Previews: PreviewProvider {
    static var previews: some View {
        AddNewNote(tasks: .constant([Task(title: "Sample item 1")]))
    }
}
