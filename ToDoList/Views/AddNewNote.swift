import SwiftUI

struct AddNewNote: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var tasks: [Task]
    @State private var newNote: String = ""
    
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
            TextField("Enter new note", text: $newNote)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                .font(.system(size: 35))
                .padding()
            //            .navigationBarBackButtonHidden(true)
            Spacer()
            HStack{
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
                Spacer()
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }){
                    Text("Cancel")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .padding()
        }
        .navigationBarHidden(false)
        .navigationBarBackButtonHidden(true)
    }
}

struct AddNewNoteView_Previews: PreviewProvider {
    static var previews: some View {
        AddNewNote(tasks: .constant([Task(title: "Sample item 1")]))
    }
}
