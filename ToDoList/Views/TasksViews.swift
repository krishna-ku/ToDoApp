import SwiftUI

struct TasksViews: View {
    @State private var tasks: [Task] = [
        Task(title: "Please write your todo tasks")
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("ToDo App 🖌️")
                        .font(.system(size: 40))
                        .frame(alignment: .center)
                    Spacer()
                    NavigationLink(destination: AddNewNote(tasks: $tasks)) {
                        Text("➕")
                            .font(.system(size: 35))
                            .padding()
                    }
                }
                .padding()
                VStack{
                    ForEach($tasks) { $task in
                        HStack {
                            ListRowView(task: $task)
                            Spacer()
                            if(!task.isDone){
                                NavigationLink(destination: EditNoteView(task: $task)) {
                                    Text("📝")
                                        .font(.system(size: 20))
                                }
                                .buttonStyle(BorderlessButtonStyle())
                            }
                            Button(action: {
                                if let index = tasks.firstIndex(where: { $0.id == task.id }) {
                                    tasks.remove(at: index)
                                }
                            }) {
                                Text("🗑️")
                                    .font(.system(size: 20))
                            }
                            .buttonStyle(BorderlessButtonStyle())
                        }
                    }
                }
                //                .padding()
                Spacer()
                //                .navigationTitle("ToDo App 🖌️")
            }
        }
    }
}

struct TasksViews_Previews: PreviewProvider {
    static var previews: some View {
        TasksViews()
    }
}
