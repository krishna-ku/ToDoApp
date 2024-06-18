import SwiftUI

struct EditNoteView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var task: Task
    @State private var editedNote: String = ""
    
    var body: some View {
        VStack {
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }) {
                HStack {
                    Image(systemName: "chevron.left")
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.blue)
                        .frame(width: 30, height: 30)
                    Text("Back")
                        .font(.headline)
                }
                Spacer()
            }
                TextField("Edit note", text: $editedNote)
                    .onAppear {
                        self.editedNote = self.task.title
                    }
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 35))
                    .padding()
            Spacer()
            .navigationBarHidden(true)
            HStack{
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
                Spacer()
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }){
                    Text("Cancel")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .padding()
            //            .navigationTitle("Edit Note")
            //            .navigationBarItems(trailing: Button("Cancel") {
            //                presentationMode.wrappedValue.dismiss()
            //            })
        }
    }
}

struct EditNoteView_Previews: PreviewProvider {
    static var previews: some View {
        EditNoteView(task: .constant(Task(title: "Sample item")))
    }
}
