import SwiftUI

struct EditNoteView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var task: Task
    @State private var editedNote: String = ""
    
    var body: some View {
        VStack {
            Form {
                TextField("Edit note", text: $editedNote)
                    .onAppear {
                        self.editedNote = self.task.title
                    }
            }
            Button(action: {
                task.title = editedNote
                presentationMode.wrappedValue.dismiss()
            }) {
                Text("Save")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .disabled(editedNote.isEmpty)
            .navigationTitle("Edit Note")
            .navigationBarItems(trailing: Button("Cancel") {
                presentationMode.wrappedValue.dismiss()
            })
        }
    }
}

struct EditNoteView_Previews: PreviewProvider {
    static var previews: some View {
        EditNoteView(task: .constant(Task(title: "Sample item")))
    }
}
